#!/usr/bin/env python2
# coding: utf-8
#importando tkinter para criacao de interface grafica
from Tkinter import *
import tkMessageBox
import Tkinter as tk
import os
import commands
#Definindo a classe da aplicacao
class Application:
    #definindo o master como interface primaria
	def __init__(self, master=None):

#definindo um self como fonte padrao para ser usada repedidas vezes sem muito codigo

		self.fontePadrao = ('Arial', '10')
        
#criando o primeiro container e definindo o vinculo com o master e sua posicao

		self.primeiroContainer = Frame(master)
		self.primeiroContainer['pady'] = 10
		self.primeiroContainer.pack()

#criando o segundo container e definindo o vinculo com o master e sua posicao

		self.segundoContainer = Frame(master)
		self.segundoContainer['padx'] = 20
		self.segundoContainer.pack()

#criando o terceiro container e definindo o vinculo com o master e sua posicao

		self.terceiroContainer = Frame(master)
		self.terceiroContainer['pady'] = 20
		self.terceiroContainer.pack()

#criando o primeiro quarto e definindo o vinculo com o master e sua posicao

		self.quartoContainer = Frame(master)
		self.quartoContainer['pady'] = 20
		self.quartoContainer.pack()

#Definindo um Label para titulo do primeiro container e sua fonte

		self.titulo = Label(self.primeiroContainer, text='Dados do Usuario')
		self.titulo['font'] = ('Arial', '10', 'bold')
		self.titulo.pack()

#Criando o botao de autenticação com seu tamanho, fonte e texto

		self.autenticar = Button(self.quartoContainer)
		self.autenticar['text'] = 'Autenticar'
		self.autenticar['font'] = ('Calibri', '8')
		self.autenticar['width'] = 12
		self.autenticar['height'] = 2
#		self.autenticar['command'] = self.verificarSenha
		self.autenticar['command'] = self.go
		self.autenticar.pack()

		self.botaoSair = Button(self.quartoContainer)
		self.botaoSair['text'] = 'Sair'
		self.botaoSair['font'] = self.fontePadrao
		self.botaoSair['width'] = 12
		self.botaoSair['height'] = 1
		self.botaoSair['pady'] = 2
		self.botaoSair['command'] = self.sair
		self.botaoSair.pack()

#Definindo o Label que ira mudar de acordo com a validação de Nome e Senha

#		self.mensagem = Tk.listbox(self.quartoContainer, text='', font=self.fontePadrao)
#		self.mensagem.pack()
		self.listbox = tk.Listbox(self.quartoContainer)
		self.listbox.pack()

#Definindo a função que verificara nome e senha
	def sair(self):
		self.primeiroContainer.quit()

#	def verificarSenha(self):
#		usuario = self.nome.get()
#		senha = self.senha.get()

#Condicional de verificacao de nome e senha

#		if usuario == 'champiao' and senha == 'champiao':
#			self.mensagem['text'] = 'Autenticado'
#			acesso = 'permitido'
#		else:
#			self.mensagem['text'] = 'Usuário ou senha incorreto, tente novamente'
#		if acesso == 'permitido':
	def go(self):
		teste = commands.getoutput('~/potHW.sh 65.177')
		self.listbox.get(ACTIVE)
		self.listbox.insert(ACTIVE,teste)
#comando personalizavel de sistema UNIX para quando usuário for autenticado

#			os.system('google-chrome --incognito champiao.com.br')

#Saindo da aplicacao quando autenticado e rodado o  comando
            
#			self.primeiroContainer.quit()

#Iniciando interface grafica quando rodado o Script


root = Tk()
Application(root)
root.mainloop()
