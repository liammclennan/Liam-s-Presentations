using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;

namespace StoryQDemo.Core
{
    public interface IHash
    {
        string Hash(string hashInput);
    }

    public class Hasher : IHash
    {
        private MD5 hashAlgorithm = MD5.Create();

        public string Hash(string hashInput)
        {
            var hashBytes = hashAlgorithm.ComputeHash(Encoding.Default.GetBytes(hashInput));
            StringBuilder sBuilder = new StringBuilder();
            for (int i = 0; i < hashBytes.Length; i++)
            {
                sBuilder.Append(hashBytes[i].ToString("x2"));
            }
            return sBuilder.ToString();
        }
    }
}
