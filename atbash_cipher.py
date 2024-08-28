"""
Atbash Cipher
--
Created by: Daniel Gómez
Email: dgomez.informatica@gmail.com
"""


def encriptrar(cadena):
    """
    Encripta una cadena de texto u palabra utilizando el cifrado Atbash.

    Args:
    cadena (str): Cadena de texto a encriptar.

    Returns:
    str: Cadena de texto encriptada.
    """

    texto_encriptado = "";

    for letra in cadena:
        if letra.isalpha():
            for i in range(len(alfabetoX)):
                if letra == alfabetoX[i]:
                    texto_encriptado += alfabetoY[i]
                    break
        else:
            texto_encriptado += letra

    return texto_encriptado

def desencriptrar(cadena):
    """
    Desencripta una cadena de texto que ha sido encriptada con el cifradoo Atbash.

    Args:
    cadena (str): Cadena de texto a desencriptar.

    Returns:
    str: Cadena de texto desencriptado.
    """

    texto_desencriptado = ""

    for letra in cadena:
        if letra.isalpha():
            for i in range(len(alfabetoY)):
                if letra == alfabetoY[i]:
                    texto_desencriptado += alfabetoX[i]
                    break
        else:
            texto_desencriptado += letra

    return texto_desencriptado

if __name__ == '__main__':
    # Definicion de los alfabetos para la encriptación Atbash
    alfabetoX = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
    alfabetoY = ['Z', 'Y', 'X', 'W', 'V', 'U', 'T', 'S', 'R', 'Q', 'P', 'O', 'N', 'M', 'L', 'K', 'J', 'I', 'H', 'G', 'F', 'E', 'D', 'C', 'B', 'A']

    texto = input("Ingrese un texto cualquiera: ").upper()

    print(f"\nTexto {texto} encriptado: {encriptrar(texto)}")
    print(f"Texto {encriptrar(texto)} desencriptado: {desencriptrar(encriptrar(texto))}")
