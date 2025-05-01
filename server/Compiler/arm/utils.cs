using System.Text;

public static class Utils
{
    public static List<byte> StringToByteArray(string str)
    {
        // Procesar secuencias de escape y construir un nuevo string
        var processedString = new StringBuilder();
        int i = 0;
        while (i < str.Length)
        {
            if (str[i] == '\\' && i + 1 < str.Length)
            {
                // Manejar secuencias de escape
                switch (str[i + 1])
                {
                    case 'n': processedString.Append('\n'); break;  // Nueva línea
                    case 't': processedString.Append('\t'); break;  // Tabulación
                    case 'r': processedString.Append('\r'); break;  // Retorno de carro
                    case '\\': processedString.Append('\\'); break; // Barra invertida
                    case '"': processedString.Append('"'); break;   // Comillas dobles
                    case '/': processedString.Append('/'); break;   // Slash
                    case 'u': // Secuencias Unicode (ej: \u00F1)
                        if (i + 5 < str.Length)
                        {
                            var hex = str.Substring(i + 2, 4);
                            var unicodeValue = Convert.ToInt32(hex, 16);
                            processedString.Append((char)unicodeValue);
                            i += 5; // Avanzar 5 caracteres (\uXXXX)
                        }
                        break;
                    default: // Carácter desconocido, mantener literal
                        processedString.Append(str[i + 1]);
                        break;
                }
                i += 2; // Saltar el escape y el carácter
            }
            else
            {
                processedString.Append(str[i]);
                i++;
            }
        }

        // Convertir a bytes UTF-8
        byte[] utf8Bytes = Encoding.UTF8.GetBytes(processedString.ToString());
        List<byte> resultado = new List<byte>(utf8Bytes);
        resultado.Add(0); // Null terminator
        return resultado;
    }
}