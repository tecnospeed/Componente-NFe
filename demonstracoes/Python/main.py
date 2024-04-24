import win32com.client

nfe = win32com.client.Dispatch("NFeX.spdNFeX")

""" Configurar informando o CNPJ da software house"""
nfe.ConfigurarSoftwareHouse("","") 

"""Informar o path completo do arquivo nfeConfig.ini"""
nfe.LoadConfig(r"C:\demo\nfeconfig.ini")

print("Iniciando consulta de status do servico")
print(nfe.StatusDoServico())
print("Finalizando consulta de status do servico")
