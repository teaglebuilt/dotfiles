" Vim syntax file
" Language: Robotframework
" Maintainer: Suzuki Aki
" Latest Revision: 1 August 2018

if exists("b:current_syntax")
  finish
endif

syn match robotTestCaseName '^\w.*$'  contains=robotString

syn match robotLibraryLine       '^\s\{0,4}Library\s\{2}\s*\S.*$'        contains=robotLibrary
syn match robotResourceLine      '^\s\{0,4}Resource\s\{2}\s*\S.*$'       contains=robotResource
syn match robotForceTagsLine     '^\s\{0,4}Force Tags\s\{2}.*$'          contains=robotForceTags
syn match robotSuiteSetupLine    '^\s\{0,4}Suite Setup\s\{2}\s*\S.*$'    contains=robotSuiteSetup
syn match robotSuiteTeardownLine '^\s\{0,4}Suite Teardown\s\{2}\s*\S.*$' contains=robotSuiteTeardown
syn match robotTestSetupLine     '^\s\{0,4}Test Setup\s\{2}\s*\S.*$'     contains=robotTestSetup
syn match robotTestTeardownLine  '^\s\{0,4}Test Teardown\s\{2}\s*\S.*$'  contains=robotTestTeardown
syn match robotDocumentationLine '^\s\{0,4}Documentation\s\{2}\s*\S.*$'  contains=robotDocumentation
syn match robotDotsLine          '^\s\{0}\s*\.\.\.\s\{2}.*$'             contains=robotDots,robotString,robotNumber
syn match robotLibrary       contained '^\s\{0,4}Library'
syn match robotResource      contained '^\s\{0,4}Resource'
syn match robotForceTags     contained '^\s\{0,4}Force tags'
syn match robotSuiteSetup    contained '^\s\{0,4}Suite Setup'
syn match robotSuiteTeardown contained '^\s\{0,4}Suite Teardown'
syn match robotTestSetup     contained '^\s\{0,4}Test Setup'
syn match robotTestTeardown  contained '^\s\{0,4}Test Teardown'
syn match robotDocumentation contained '^\s\{0,4}Documentation'

syn match robotKeywordsStep '^\s\{2}\s*\w.*$' contains=robotVariable,robotGherkin,robotString,robotNumber,robotOperator
syn match robotGherkin  contained '^\s\{2}\s*\<\(Given\|When\|Then\|And\|But\)\>'
syn match robotDots  contained '^\s\{2}\s*\.\.\.\s\{2}'

syn region robotString start=+"+ end=+"+ contains=robotVariable
syn region robotSection start=+\*\*\*+ end=+\*\*\*+
syn match robotTag      '\[\w*\]'
syn match robotNumber   '\<\d\+\>'
syn match robotOperator "==\|="
syn match robotVariable "\(\$\|@\|&\|%\){.\{-}}"
syn match robotComment  '^\s*#.*$'

hi def link robotLibrary           PreProc
hi def link robotResource          PreProc
hi def link robotForceTags         PreProc
hi def link robotSuiteSetup        PreProc
hi def link robotSuiteTeardown     PreProc
hi def link robotTestSetup         PreProc
hi def link robotTestTeardown      PreProc
hi def link robotDocumentation     PreProc
hi def link robotDots              Identifier
hi def link robotSection           SpellCap
hi def link robotTestCaseName      Function
hi def link robotTag               MoreMsg
hi def link robotNumber            Number
hi def link robotString            String
hi def link robotOperator          Operator
hi def link robotVariable          Type
hi def link robotGherkin           Ignore
hi def link robotComment           Comment
