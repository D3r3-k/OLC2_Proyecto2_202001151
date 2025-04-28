# OLC2_Proyecto2_202001151
## Documentación

### Encender el Servidor
Para iniciar el servidor, utiliza el siguiente comando:
```bash
dotnet watch run
```

### Encender el Cliente
Para iniciar el cliente, utiliza el siguiente comando:
```bash
npm run dev
```

### Información del Makefile
El archivo `Makefile` contiene las instrucciones necesarias para compilar y ejecutar el proyecto. Asegúrate de tener el archivo `makefile`

```
AS = aarch64-linux-gnu-as
LD = aarch64-linux-gnu-ld
CPU = cortex-a57

TARGET = program

# Ensamblar y enlazar
$(TARGET): $(TARGET).o
	$(LD) $< -o $@
	rm -f $<
	@echo "----------------------------------------"
	@echo "Compilación finalizada."

%.o: %.s
	$(AS) -mcpu=$(CPU) $< -o $@

# Limpieza
clean:
	rm -f *.o $(TARGET)
```

### Comandos para Ejecutar el Makefile
Para compilar el proyecto, ejecuta:
```bash
make program
```

### Ejecutar el Programa
Una vez compilado, puedes ejecutar el programa con:
```bash
./program
```