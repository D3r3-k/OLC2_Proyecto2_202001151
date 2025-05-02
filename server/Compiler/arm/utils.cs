using System.Text;

public static class Utils
{
    public static List<byte> StringToByteArray(string str)
    {
        var processedString = new StringBuilder();
        int i = 0;
        while (i < str.Length)
        {
            if (str[i] == '\\' && i + 1 < str.Length)
            {
                switch (str[i + 1])
                {
                    case 'n': processedString.Append('\n'); break;
                    case 't': processedString.Append('\t'); break;
                    case 'r': processedString.Append('\r'); break;
                    case '\\': processedString.Append('\\'); break;
                    case '"': processedString.Append('"'); break;
                    case '/': processedString.Append('/'); break;
                    case 'u':
                        if (i + 5 < str.Length)
                        {
                            var hex = str.Substring(i + 2, 4);
                            var unicodeValue = Convert.ToInt32(hex, 16);
                            processedString.Append((char)unicodeValue);
                            i += 5;
                        }
                        break;
                    default:
                        processedString.Append(str[i + 1]);
                        break;
                }
                i += 2;
            }
            else
            {
                processedString.Append(str[i]);
                i++;
            }
        }
        byte[] utf8Bytes = Encoding.UTF8.GetBytes(processedString.ToString());
        List<byte> resultado = new List<byte>(utf8Bytes);
        resultado.Add(0);
        return resultado;
    }
}