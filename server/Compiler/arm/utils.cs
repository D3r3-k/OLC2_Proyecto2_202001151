public static class Utils
{
    public static List<byte> StringToByteArray(string str)
    {
        var resultado = new List<byte>();
        int elementIndex = 0;
        while (elementIndex < str.Length)
        {
            if (str[elementIndex] == '\\' && elementIndex + 1 < str.Length)
            {
                // Manejar secuencias de escape
                switch (str[elementIndex + 1])
                {
                    case 'n': resultado.Add((byte)'\n'); break;
                    case 't': resultado.Add((byte)'\t'); break;
                    case 'r': resultado.Add((byte)'\r'); break;
                    case '\\': resultado.Add((byte)'\\'); break;
                    case '"': resultado.Add((byte)'"'); break;
                    case '/': resultado.Add((byte)'/'); break;
                    default:
                        resultado.Add((byte)str[elementIndex + 1]);
                        break;
                }
                elementIndex += 2;
            }
            else
            {
                resultado.Add((byte)str[elementIndex]);
                elementIndex++;
            }
        }
        resultado.Add(0); // Null terminator
        return resultado;
    }
}