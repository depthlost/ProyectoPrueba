Class {
	#name : #Sistema,
	#superclass : #Object,
	#instVars : [
		'numero'
	],
	#classInstVars : [
		'instancia'
	],
	#category : #CodigoPrueba
}

{ #category : #'instance creation' }
Sistema class >> new [

	^ self obtenerInstancia.
]

{ #category : #'as yet unclassified' }
Sistema class >> obtenerInstancia [

	^ instancia ifNil: [ instancia := super new  ].
]

{ #category : #initialization }
Sistema >> decrementar [

	numero := numero - 1.
]

{ #category : #initialization }
Sistema >> incrementar [

	numero := numero + 1.
]

{ #category : #initialization }
Sistema >> initialize [

	numero := 0.
]

{ #category : #initialization }
Sistema >> nuevoMetodo [

	^ 'prueba'.
]

{ #category : #initialization }
Sistema >> numero [

	^ numero.
]

{ #category : #initialization }
Sistema >> numero: unNumero [

	numero := unNumero.
]
