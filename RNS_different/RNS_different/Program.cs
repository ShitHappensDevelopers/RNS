using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Numerics;

namespace RNS_different
{
    class Program
    {
        private const int Width = 64;
        private const int WidthRns = 65;

        private static List<int> S = new List<int>
            {
                0,
                1,
                9,
                17,
                25,
                33,
                41,
                49,
                57,
                //0, 8, 16, 24
            };
        private static List<BigInteger> M = new List<BigInteger> {
                2,
                211,
                223,
                227,
                229,
                233,
                239,
                241,
                251
            };
        private static BigInteger RnsMiddlePoint;
        private static BigInteger MaxInt;
        private static BigInteger Delta;

        static void Main(string[] args)
        {
            var maxRns = M.Aggregate((acc, e) => acc * e);
            var A = GetAs(M, maxRns);
            RnsMiddlePoint = maxRns / 2;
            MaxInt = GetMaxInt();
            Delta = MaxInt - maxRns;

            var inputFileName = args[0];
            var outputFileName = args[1];
            var scaling = int.Parse(args[2]);

            var signalOutputFileName = $"{Path.GetFileNameWithoutExtension(outputFileName)}_signal{Path.GetExtension(outputFileName)}";
            var signalOutputFileNameRns = $"{Path.GetFileNameWithoutExtension(outputFileName)}_signal_rns{Path.GetExtension(outputFileName)}";
            var twReOutputFileName = $"{Path.GetFileNameWithoutExtension(outputFileName)}_tw_re{Path.GetExtension(outputFileName)}";
            var twReOutputFileNameRns = $"{Path.GetFileNameWithoutExtension(outputFileName)}_tw_re_rns{Path.GetExtension(outputFileName)}";
            var twImOutputFileName = $"{Path.GetFileNameWithoutExtension(outputFileName)}_tw_im{Path.GetExtension(outputFileName)}";
            var twImOutputFileNameRns = $"{Path.GetFileNameWithoutExtension(outputFileName)}_tw_im_rns{Path.GetExtension(outputFileName)}";

            var signalLength = GenerateSignal(inputFileName, signalOutputFileName, signalOutputFileNameRns);
            GenerateTwiddleFactors(signalLength, scaling, twReOutputFileName, twImOutputFileName, twReOutputFileNameRns, twImOutputFileNameRns);

            //GenerateTwiddleFactors(10, 10, "a.txt", "b.txt", "c.txt", "d.txt");

            //BigInteger bigInteger = ConvertIntToRns(-13);
            //Console.WriteLine(bigInteger);
            //Console.WriteLine(bigInteger.ToBinaryString(32));
        }

        private static int GenerateSignal(string inputFileName, string outputFileName, string outputFileNameRns)
        {
            var inputData = File.ReadAllText(inputFileName).Split(',').Select(e => BigInteger.Parse(e)).ToList();
            var signalLength = (int)inputData[0];

            var signal = new List<string>();
            var signalRns = new List<string>();

            for (int j = 0; j < signalLength; j++)
            {
                signal.Add(inputData[j + 1].ToBinaryString(Width));
                signalRns.Add(ConvertIntToRns(inputData[j + 1]).ToBinaryString(WidthRns));
            }

            File.WriteAllLines(outputFileName, signal);
            File.WriteAllLines(outputFileNameRns, signalRns);

            return signalLength;
        }

        private static void GenerateTwiddleFactors(int signalsCount, int scaling, string cosFileName, string sinFileName, string cosFileNameRns, string sinFileNameRns)
        {
            var cosTw = new List<string>();
            var sinTw = new List<string>();
            var cosTwRns = new List<string>();
            var sinTwRns = new List<string>();

            for (int i = 0; i < signalsCount; i++)
            {
                for (int j = 0; j < signalsCount; j++)
                {
                    var re = (BigInteger)(Math.Cos(-2 * Math.PI * i * j / signalsCount) * (1 << scaling));
                    var im = (BigInteger)(Math.Sin(-2 * Math.PI * i * j / signalsCount) * (1 << scaling));

                    cosTw.Add(re.ToBinaryString(Width));
                    sinTw.Add(im.ToBinaryString(Width));
                    cosTwRns.Add(ConvertIntToRns(re).ToBinaryString(WidthRns));
                    sinTwRns.Add(ConvertIntToRns(im).ToBinaryString(WidthRns));
                }
            }

            File.WriteAllLines(cosFileName, cosTw);
            File.WriteAllLines(sinFileName, sinTw);
            File.WriteAllLines(cosFileNameRns, cosTwRns);
            File.WriteAllLines(sinFileNameRns, sinTwRns);
        }

        private static BigInteger ConvertIntToRns(BigInteger n)
        {
            if (n.Sign == -1)
                n = MaxInt + n - Delta;

            BigInteger result = 0;
            for (int i = 0; i < M.Count; i++)
            {
                result |= (n % M[i]) << S[i];
            }

            return result;
        }

        private static BigInteger GetMaxInt()
        {
            BigInteger intMax = 1;
            for (int i = 0; i < Width; i++)
            {
                intMax *= 2;
            }

            return intMax;
        }

        private static List<BigInteger> GetAs(List<BigInteger> moduli, BigInteger maxNum)
        {
            var temp = moduli.Select(e => maxNum / e).ToList();
            var residues = temp.Select((e, i) => e % moduli[i]).ToList();

            var X = new int[moduli.Count];

            for (int i = 0; i < residues.Count; i++)
            {
                for (int j = 1; j < moduli[i]; j++)
                {
                    if ((residues[i] * j) % moduli[i] == 1)
                    {
                        X[i] = j;
                        break;
                    }
                }
            }

            var As = temp.Select((e, i) => e * X[i]).ToList();
            return As;
        }
    }
}
