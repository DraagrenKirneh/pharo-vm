primitives-renderer
primitiveSwapRendererBuffers
	| handle result |
	<export: true>
	interpreterProxy methodArgumentCount = 1
		ifFalse:[^interpreterProxy primitiveFail].
	handle := interpreterProxy stackIntegerValue: 0.
	interpreterProxy failed ifTrue:[^nil].
	result := self cCode:'b3dxSwapRendererBuffers(handle)' inSmalltalk:[false].
	result ifFalse:[^interpreterProxy primitiveFail].
	^interpreterProxy pop: 1. "pop arg; return rcvr"