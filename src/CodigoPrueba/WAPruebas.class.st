Class {
	#name : #WAPruebas,
	#superclass : #WAComponent,
	#instVars : [
		'text'
	],
	#category : #CodigoPrueba
}

{ #category : #testing }
WAPruebas class >> canBeRoot [

	^ true.
]

{ #category : #rendering }
WAPruebas >> renderContentOn: html [

	html text: text.
	html break.
	html text: html class name.
	html break.
	html button
		class: 'btn btn-primary';
		with: 'HelloWorld'.
	html break.
	html anchor
		class: 'btn btn-danger';
		callback: [ text := 'nuevo valor' ];
		with: 'Modificar'.
]

{ #category : #updating }
WAPruebas >> updateRoot: anHtmlRoot [
	super updateRoot: anHtmlRoot.
	anHtmlRoot add: (WALinkElement new
		beStylesheet;
		url: 'https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css').
]
