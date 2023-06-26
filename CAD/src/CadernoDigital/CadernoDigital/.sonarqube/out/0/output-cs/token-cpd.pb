�q
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Controllers\HomeController.cs
	namespace 	
CadernoDigital
 
. 
Controllers $
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
private 
readonly 
ILogger  
<  !
HomeController! /
>/ 0
_logger1 8
;8 9
private 
readonly 
ISessao  
_sessao! (
;( )
private 
readonly 
IPublicacaoService +
_publicacaoService, >
;> ?
private 
readonly 
IPreferenciaService ,
_preferenciaService- @
;@ A
private 
readonly 
IMemoryCache %
_memoryCache& 2
;2 3
private 
string 
_caminhoImagem %
;% &
public 
HomeController 
( 
ILogger %
<% &
HomeController& 4
>4 5
logger6 <
,< =
ISessao> E
sessaoF L
,L M
IPublicacaoServiceN `
publicacaoServicea r
,r s
IPreferenciaService 
preferenciaService  2
,2 3
IMemoryCache4 @
memoryCacheA L
,L M
IWebHostEnvironmentN a
caminhoImagemb o
)o p
{ 	
_logger 
= 
logger 
; 
_sessao 
= 
sessao 
; 
_publicacaoService   
=    
publicacaoService  ! 2
;  2 3
_preferenciaService!! 
=!!  !
preferenciaService!!" 4
;!!4 5
_memoryCache"" 
="" 
memoryCache"" &
;""& '
_caminhoImagem## 
=## 
caminhoImagem## *
.##* +
WebRootPath##+ 6
;##6 7
}$$ 	
public&& 
IActionResult&& 
Index&& "
(&&" #
)&&# $
{'' 	
if(( 
((( 
_sessao(( 
.(( !
BuscarSessaoDoUsuario(( -
(((- .
)((. /
==((0 2
null((3 7
)((7 8
{)) 
return** 
RedirectToAction** '
(**' (
$str**( /
,**/ 0
$str**1 8
)**8 9
;**9 :
}++ 
List-- 
<-- 
PublicacaoViewModel-- $
>--$ %
publicacoes--& 1
=--2 3
_publicacaoService--4 F
.--F G

BucarTodos--G Q
(--Q R
)--R S
;--S T
return// 
View// 
(// 
publicacoes// #
)//# $
;//$ %
}00 	
public22 
IActionResult22 
Criar22 "
(22" #
)22# $
{33 	
if44 
(44 
_sessao44 
.44 !
BuscarSessaoDoUsuario44 -
(44- .
)44. /
==440 2
null443 7
)447 8
{55 
return66 
RedirectToAction66 '
(66' (
$str66( /
,66/ 0
$str661 8
)668 9
;669 :
}77 
var88 
disciplinas88 
=88 
_publicacaoService88 0
.880 1
BuscarDisciplinas881 B
(88B C
)88C D
;88D E
var99 
professores99 
=99 
_publicacaoService99 0
.990 1
BuscarProfessores991 B
(99B C
)99C D
;99D E
var:: 
tag:: 
=:: 
_preferenciaService:: )
.::) *
BuscarPorTags::* 7
(::7 8
)::8 9
;::9 :
var;; 
	viewModel;; 
=;; 
new;; 
PublicacaoViewModel;;  3
{;;4 5
Disciplinas;;6 A
=;;B C
disciplinas;;D O
,;;O P
Professores;;Q \
=;;] ^
professores;;_ j
,;;j k
Tag;;l o
=;;p q
tag;;r u
};;v w
;;;w x
return<< 
View<< 
(<< 
	viewModel<< !
)<<! "
;<<" #
}== 	
public?? 
IActionResult?? 
Editar?? #
(??# $
Guid??$ (
id??) +
)??+ ,
{@@ 	
PublicacaoModelAA 
contatoAA #
=AA$ %
_publicacaoServiceAA& 8
.AA8 9
BuscarPorIDAA9 D
(AAD E
idAAE G
)AAG H
;AAH I
returnBB 
ViewBB 
(BB 
contatoBB 
)BB  
;BB  !
}CC 	
publicEE 
IActionResultEE 
ComentarEE %
(EE% &
GuidEE& *
idEE+ -
)EE- .
{FF 	
PublicacaoViewModelGG 

ComentarioGG  *
=GG+ ,
_publicacaoServiceGG- ?
.GG? @
ComentarioPorIdGG@ O
(GGO P
idGGP R
)GGR S
;GGS T
SetCacheHH 
(HH 
idHH 
)HH 
;HH 
returnII 
ViewII 
(II 

ComentarioII "
)II" #
;II# $
}JJ 	
[LL 	
HttpPostLL	 
]LL 
publicMM 
IActionResultMM 
PublicarMM %
(MM% &
PublicacaoViewModelMM& 9
pubMM: =
)MM= >
{NN 	
ifOO 
(OO 
_sessaoOO 
.OO !
BuscarSessaoDoUsuarioOO -
(OO- .
)OO. /
==OO0 2
nullOO3 7
)OO7 8
{PP 
returnQQ 
RedirectToActionQQ '
(QQ' (
$strQQ( /
,QQ/ 0
$strQQ1 8
)QQ8 9
;QQ9 :
}RR 
pubTT 
.TT 

PublicacaoTT 
.TT #
Id_Disciplina_ProfessorTT 2
=TT3 4
_publicacaoServiceTT5 G
.TTG H'
BuscarIdDisciplinaProfessorTTH c
(TTc d
pubTTd g
.TTg h
DisciplinaProfessorTTh {
.TT{ |
Id_Disciplina	TT| �
,
TT� �
pub
TT� �
.
TT� �!
DisciplinaProfessor
TT� �
.
TT� �
Id_Professor
TT� �
)
TT� �
;
TT� �
tryVV 
{WW 
ifXX 
(XX 

ModelStateXX 
.XX 
IsValidXX &
)XX& '
{YY 
pubZZ 
.ZZ 

PublicacaoZZ "
.ZZ" #
ImagemZZ# )
=ZZ* +
_publicacaoServiceZZ, >
.ZZ> ?
TratarUploadZZ? K
(ZZK L
pubZZL O
)ZZO P
;ZZP Q
pub[[ 
.[[ 

Publicacao[[ "
=[[# $
_publicacaoService[[% 7
.[[7 8
	Adicionar[[8 A
([[A B
pub[[B E
.[[E F

Publicacao[[F P
)[[P Q
;[[Q R
TempData]] 
[]] 
$str]] .
]]]. /
=]]0 1
$str]]2 J
;]]J K
return^^ 
RedirectToAction^^ +
(^^+ ,
$str^^, 3
)^^3 4
;^^4 5
}__ 
returnaa 
Viewaa 
(aa 
pubaa 
)aa  
;aa  !
}bb 
catchcc 
(cc 
	Exceptioncc 
excc 
)cc  
{dd 
TempDataee 
[ee 
$stree '
]ee' (
=ee) *
$"ee+ -
$stree- }
{ee} ~
ex	ee~ �
.
ee� �
Message
ee� �
}
ee� �
"
ee� �
;
ee� �
returnff 
RedirectToActionff '
(ff' (
$strff( /
)ff/ 0
;ff0 1
}gg 
}hh 	
[jj 	
HttpPostjj	 
]jj 
publickk 
IActionResultkk 
Editarkk #
(kk# $
PublicacaoModelkk$ 3

publicacaokk4 >
)kk> ?
{ll 	
ifmm 
(mm 
_sessaomm 
.mm !
BuscarSessaoDoUsuariomm -
(mm- .
)mm. /
==mm0 2
nullmm3 7
)mm7 8
{nn 
returnoo 
RedirectToActionoo '
(oo' (
$stroo( /
,oo/ 0
$stroo1 8
)oo8 9
;oo9 :
}pp 
tryrr 
{ss 
iftt 
(tt 

ModelStatett 
.tt 
IsValidtt &
)tt& '
{uu 

publicacaovv 
=vv  
_publicacaoServicevv! 3
.vv3 4
	Atualizarvv4 =
(vv= >

publicacaovv> H
)vvH I
;vvI J
TempDataww 
[ww 
$strww .
]ww. /
=ww0 1
$strww2 T
;wwT U
returnxx 
RedirectToActionxx +
(xx+ ,
$strxx, 3
)xx3 4
;xx4 5
}yy 
return{{ 
View{{ 
({{ 

publicacao{{ &
){{& '
;{{' (
}|| 
catch}} 
(}} 
	Exception}} 
erro}} !
)}}! "
{~~ 
TempData 
[ 
$str '
]' (
=) *
$"+ -
$str- |
{| }
erro	} �
.
� �
Message
� �
}
� �
"
� �
;
� �
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
IActionResult
�� 
Comentar
�� %
(
��% &
string
��& ,
id
��- /
,
��/ 0
string
��1 7
coment
��8 >
)
��> ?
{
�� 	
if
�� 
(
�� 
_sessao
�� 
.
�� #
BuscarSessaoDoUsuario
�� -
(
��- .
)
��. /
==
��0 2
null
��3 7
)
��7 8
{
�� 
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( /
,
��/ 0
$str
��1 8
)
��8 9
;
��9 :
}
�� 
try
�� 
{
�� 
var
�� 
result
�� 
=
��  
_publicacaoService
�� /
.
��/ 0
Comentar
��0 8
(
��8 9
id
��9 ;
,
��; <
coment
��= C
)
��C D
;
��D E
TempData
�� 
[
�� 
$str
�� *
]
��* +
=
��, -
$str
��. F
;
��F G
return
�� 
Comentar
�� 
(
��  
Guid
��  $
.
��$ %
Parse
��% *
(
��* +
id
��+ -
)
��- .
)
��. /
;
��/ 0
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
TempData
�� 
[
�� 
$str
�� '
]
��' (
=
��) *
$"
��+ -
$str
��- }
{
��} ~
ex��~ �
.��� �
Message��� �
}��� �
"��� �
;��� �
return
�� 
RedirectToAction
�� '
(
��' (
$str
��( 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
IActionResult
�� 
Curtida
�� $
(
��$ %
)
��% &
{
�� 	
var
�� 

publicacao
�� 
=
�� 
Guid
�� !
.
��! "
Parse
��" '
(
��' (
_memoryCache
��( 4
.
��4 5
Get
��5 8
(
��8 9
$str
��9 E
)
��E F
.
��F G
ToString
��G O
(
��O P
)
��P Q
)
��Q R
;
��R S 
_publicacaoService
�� 
.
�� 
AtualizaCurtida
�� .
(
��. /

publicacao
��/ 9
)
��9 :
;
��: ;
return
�� 
RedirectToAction
�� #
(
��# $
$str
��$ .
,
��. /
new
��0 3
{
��4 5
id
��6 8
=
��9 :

publicacao
��; E
}
��F G
)
��G H
;
��H I
}
�� 	
public
�� 
void
�� 
SetCache
�� 
(
�� 
Guid
�� !
id
��" $
)
��$ %
{
�� 	
_memoryCache
�� 
.
�� 
Set
�� 
(
�� 
$str
�� )
,
��) *
id
��+ -
)
��- .
;
��. /
}
�� 	
public
�� 
IActionResult
�� 

GerarSenha
�� '
(
��' (
)
��( )
{
�� 	
Criptografia
�� 
cript
�� 
=
��  
new
��! $
Criptografia
��% 1
(
��1 2
)
��2 3
;
��3 4
cript
�� 
.
�� %
GerarSenhaCriptografada
�� )
(
��) *
)
��* +
;
��+ ,
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	
ResponseCache
��	 
(
�� 
Duration
�� 
=
��  !
$num
��" #
,
��# $
Location
��% -
=
��. /#
ResponseCacheLocation
��0 E
.
��E F
None
��F J
,
��J K
NoStore
��L S
=
��T U
true
��V Z
)
��Z [
]
��[ \
public
�� 
IActionResult
�� 
Error
�� "
(
��" #
)
��# $
{
�� 	
return
�� 
View
�� 
(
�� 
new
�� 
ErrorViewModel
�� *
{
��+ ,
	RequestId
��- 6
=
��7 8
Activity
��9 A
.
��A B
Current
��B I
?
��I J
.
��J K
Id
��K M
??
��N P
HttpContext
��Q \
.
��\ ]
TraceIdentifier
��] l
}
��m n
)
��n o
;
��o p
}
�� 	
}
�� 
}�� �#
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Controllers\LoginController.cs
	namespace 	
CadernoDigital
 
. 
Controllers $
{ 
public 

class 
LoginController  
:! "

Controller# -
{ 
private 
readonly 
ILoginService &
_loginService' 4
;4 5
private 
readonly 
ISessao  
_sessao! (
;( )
private 
readonly 
Criptografia %
_criptitografia& 5
;5 6
public 
LoginController 
( 
ILoginService ,
loginService- 9
,9 :
ISessao; B
sessaoC I
,I J
CriptografiaK W
criptitografiaX f
)f g
{ 	
_loginService 
= 
loginService (
;( )
_sessao 
= 
sessao 
; 
_criptitografia 
= 
criptitografia ,
;, -
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
if 
( 
_sessao 
. !
BuscarSessaoDoUsuario -
(- .
). /
!=0 2
null3 7
)7 8
return9 ?
RedirectToAction@ P
(P Q
$strQ X
,X Y
$strZ `
)` a
;a b
return 
View 
( 
) 
; 
} 	
[   	
HttpPost  	 
]   
public!! 
IActionResult!! 
Logar!! "
(!!" #

LoginModel!!# -

loginModel!!. 8
)!!8 9
{"" 	
try$$ 
{%% 
if&& 
(&& 

ModelState&& 
.&& 
IsValid&& &
)&&& '
{'' 

loginModel(( 
.(( 
Senha(( $
=((% &
_criptitografia((' 6
.((6 7
Criptografa((7 B
(((B C

loginModel((C M
.((M N
Senha((N S
)((S T
;((T U
UsuarioModel))  
usuario))! (
=))) *
_loginService))+ 8
.))8 9

BuscaLogin))9 C
())C D

loginModel))D N
.))N O
	Matricula))O X
)))X Y
;))Y Z
if** 
(** 
usuario** 
!=**  "
null**# '
)**' (
{++ 
if,, 
(,, 
usuario,, #
.,,# $
SenhaValida,,$ /
(,,/ 0

loginModel,,0 :
.,,: ;
Senha,,; @
),,@ A
),,A B
{-- 
_sessao.. #
...# $ 
CriarSessaoDoUsuario..$ 8
(..8 9
usuario..9 @
)..@ A
;..A B
return// "
RedirectToAction//# 3
(//3 4
$str//4 ;
,//; <
$str//= C
)//C D
;//D E
}11 
TempData22  
[22  !
$str22! /
]22/ 0
=221 2
$"223 5
$str225 `
"22` a
;22a b
}33 
TempData44 
[44 
$str44 +
]44+ ,
=44- .
$"44/ 1
$str441 l
"44l m
;44m n
}55 
return66 
View66 
(66 
$str66 #
)66# $
;66$ %
}77 
catch88 
(88 
	Exception88 
ex88 
)88  
{99 
TempData:: 
[:: 
$str:: '
]::' (
=::) *
$"::+ -
$str::- o
{::o p
ex::p r
.::r s
Message::s z
}::z {
"::{ |
;::| }
return;; 
RedirectToAction;; '
(;;' (
$str;;( /
);;/ 0
;;;0 1
}<< 
}== 	
public?? 
IActionResult?? 
Deslogar?? %
(??% &
)??& '
{@@ 	
_sessaoAA 
.AA  
RemoverSessaoUsuarioAA (
(AA( )
)AA) *
;AA* +
returnCC 
RedirectToActionCC #
(CC# $
$strCC$ +
,CC+ ,
$strCC- 4
)CC4 5
;CC5 6
}DD 	
}EE 
}FF �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Controllers\PreferenciaController.cs
	namespace 	
CadernoDigital
 
. 
Controllers $
{ 
public 

class !
PreferenciaController &
:' (

Controller) 3
{ 
private 
readonly 
ISessao  
_sessao! (
;( )
private 
readonly 
IPreferenciaService ,
_preferenciaService- @
;@ A
public !
PreferenciaController $
($ %
ISessao% ,
sessao- 3
,3 4
IPreferenciaService5 H
preferenciaServiceI [
)[ \
{ 	
_sessao 
= 
sessao 
; 
_preferenciaService 
=  !
preferenciaService" 4
;4 5
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
if 
( 
_sessao 
. !
BuscarSessaoDoUsuario -
(- .
). /
==0 2
null3 7
)7 8
{ 
return 
RedirectToAction '
(' (
$str( /
,/ 0
$str1 8
)8 9
;9 :
} 
var 
preferencia 
= 
_preferenciaService 1
.1 2
BuscarPorIdUser2 A
(A B
)B C
;C D
var 
tags 
= 
_preferenciaService *
.* +
BuscarPorTags+ 8
(8 9
)9 :
;: ;
var   
	viewModel   
=   
new   #
PreferenciaTagViewModel    7
{  8 9
Preferencia  : E
=  F G
preferencia  H S
,  S T
Tags  U Y
=  Z [
tags  \ `
}  a b
;  b c
return"" 
View"" 
("" 
	viewModel"" !
)""! "
;""" #
}## 	
[%% 	
HttpPost%%	 
]%% 
public&& 
IActionResult&& 
Salvar&& #
(&&# $
PreferenciaModel&&$ 4
preferencia&&5 @
)&&@ A
{'' 	
if(( 
((( 
_sessao(( 
.(( !
BuscarSessaoDoUsuario(( -
(((- .
)((. /
==((0 2
null((3 7
)((7 8
{)) 
return** 
RedirectToAction** '
(**' (
$str**( /
,**/ 0
$str**1 8
)**8 9
;**9 :
}++ 
try-- 
{.. 
if// 
(// 

ModelState// 
.// 
IsValid// &
)//& '
{00 
preferencia11 
=11  !
_preferenciaService11" 5
.115 6
Salvar116 <
(11< =
preferencia11= H
)11H I
;11I J
TempData22 
[22 
$str22 .
]22. /
=220 1
$str222 \
;22\ ]
return33 
RedirectToAction33 +
(33+ ,
$str33, 3
,333 4
$str335 ;
)33; <
;33< =
}44 
return66 
View66 
(66 
preferencia66 '
)66' (
;66( )
}77 
catch88 
(88 
	Exception88 
erro88 !
)88! "
{99 
TempData:: 
[:: 
$str:: '
]::' (
=::) *
$"::+ -
$str::- |
{::| }
erro	::} �
.
::� �
Message
::� �
}
::� �
"
::� �
;
::� �
return;; 
RedirectToAction;; '
(;;' (
$str;;( /
);;/ 0
;;;0 1
}<< 
}== 	
}>> 
}?? �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Controllers\UsuarioController.cs
	namespace 	
CadernoDigital
 
. 
Controllers $
{ 
public 

class 
UsuarioController "
:# $

Controller% /
{ 
private 
readonly 
ISessao  
_sessao! (
;( )
private 
readonly 
IUsuarioService (
_usuarioService) 8
;8 9
public 
UsuarioController  
(  !
ISessao! (
sessao) /
,/ 0
IUsuarioService1 @
usuarioServiceA O
)O P
{ 	
_sessao 
= 
sessao 
; 
_usuarioService 
= 
usuarioService ,
;, -
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
if 
( 
_sessao 
. !
BuscarSessaoDoUsuario -
(- .
). /
==0 2
null3 7
)7 8
{ 
return 
RedirectToAction '
(' (
$str( /
,/ 0
$str1 8
)8 9
;9 :
} 
List 
< 
PublicacaoViewModel $
>$ %
result& ,
=- .
_usuarioService/ >
.> ?

BucarTodos? I
(I J
)J K
;K L
return!! 
View!! 
(!! 
result!! 
)!! 
;!!  
}"" 	
}## 
}$$ �
zC:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Data\Context.cs
	namespace 	
CadernoDigital
 
. 
Data 
{		 
public

 

class

 
Context

 
:

 
	DbContext

 $
{ 
public 
Context 
( 
DbContextOptions '
<' (
Context( /
>/ 0
options1 8
)8 9
: 
base 
( 
options 
) 
{ 	
} 	
public 
DbSet 
< 
UsuarioModel !
>! "
Usuario# *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
DbSet 
< 
PublicacaoModel $
>$ %

Publicacao& 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
DbSet 
< 
DisciplinaModel $
>$ %

Disciplina& 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
DbSet 
< 
ProfessorModel #
># $
	Professor% .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
DbSet 
< 
ComentarioModel $
>$ %

Comentario& 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
DbSet 
< 
CurtidaModel !
>! "
Curtida# *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
DbSet 
< $
DisciplinaProfessorModel -
>- .
DisciplinaProfessor/ B
{C D
getE H
;H I
setJ M
;M N
}O P
public 
DbSet 
< 
PreferenciaModel %
>% &
Preferencia' 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
DbSet 
< 
TagModel 
> 
Tag "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Helper\IHelper\ISession.cs
	namespace 	
ControleDeContatos
 
. 
Helper #
{ 
public 

	interface 
ISessao 
{ 
void  
CriarSessaoDoUsuario !
(! "
UsuarioModel" .
usuario/ 6
)6 7
;7 8
void  
RemoverSessaoUsuario !
(! "
)" #
;# $
UsuarioModel		 !
BuscarSessaoDoUsuario		 *
(		* +
)		+ ,
;		, -
}

 
} �
{C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Helper\Sessao.cs
	namespace 	
ControleDeContatos
 
. 
Helper #
{ 
public 

class 
Sessao 
: 
ISessao !
{ 
private		 
readonly		  
IHttpContextAccessor		 -
_httpContext		. :
;		: ;
public 
Sessao 
(  
IHttpContextAccessor *
httpContext+ 6
)6 7
{ 	
_httpContext 
= 
httpContext &
;& '
} 	
public 
UsuarioModel !
BuscarSessaoDoUsuario 1
(1 2
)2 3
{ 	
string 
sessaoUsuario  
=! "
_httpContext# /
./ 0
HttpContext0 ;
.; <
Session< C
.C D
	GetStringD M
(M N
$strN c
)c d
;d e
if 
( 
string 
. 
IsNullOrEmpty $
($ %
sessaoUsuario% 2
)2 3
)3 4
return5 ;
null< @
;@ A
return 
JsonConvert 
. 
DeserializeObject 0
<0 1
UsuarioModel1 =
>= >
(> ?
sessaoUsuario? L
)L M
;M N
} 	
public 
void  
CriarSessaoDoUsuario (
(( )
UsuarioModel) 5
usuario6 =
)= >
{ 	
string 
valor 
= 
JsonConvert &
.& '
SerializeObject' 6
(6 7
usuario7 >
)> ?
;? @
_httpContext 
. 
HttpContext $
.$ %
Session% ,
., -
	SetString- 6
(6 7
$str7 L
,L M
valorN S
)S T
;T U
} 	
public   
void    
RemoverSessaoUsuario   (
(  ( )
)  ) *
{!! 	
_httpContext"" 
."" 
HttpContext"" $
.""$ %
Session""% ,
."", -
Remove""- 3
(""3 4
$str""4 I
)""I J
;""J K
}## 	
}$$ 
}%% �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Models\ComentarioModel.cs
	namespace 	
CadernoDigital
 
. 
Models 
{ 
public 

class 
ComentarioModel  
:! "
EntityModel# .
{		 
public

 
string

 
Conteudo

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
Guid 

Id_Usuario 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Guid 
Id_Publicacao !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Models\ContadorModel.cs
	namespace 	
CadernoDigital
 
. 
Models 
{ 
public 

class 
ContadorModel 
{		 
public

 
int

 

CurtidaQtd

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
int 
ComentarioQtd  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Models\CurtidaModel.cs
	namespace 	
CadernoDigital
 
. 
Models 
{ 
public 

class 
CurtidaModel 
: 
EntityModel  +
{		 
public

 
Guid

 

Id_Usuario

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
Guid 
Id_Publicacao !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Models\DisciplinaModel.cs
	namespace 	
CadernoDigital
 
. 
Models 
{ 
public 

class 
DisciplinaModel  
:! "
EntityModel# .
{		 
public

 
string

 
Nome

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
} 
} �	
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Models\DisciplinaProfessorModel.cs
	namespace 	
CadernoDigital
 
. 
Models 
{ 
public 

class $
DisciplinaProfessorModel )
:* +
EntityModel, 7
{		 
public

 
Guid

 
Id_Disciplina

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
Guid 
Id_Professor  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
DiaAula 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
HorarioInicioAula '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
HorarioFimAula $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Models\EntityModel.cs
	namespace 	
CadernoDigital
 
. 
Models 
{ 
public 

class 
EntityModel 
{		 
public

 
Guid

 
Id

 
{

 
get

 
;

 
set

 !
;

! "
}

# $
public 
DateTime 
DataCadastro $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DateTime 
? 
DataAtualizacao (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Models\Enums\PerfilEnum.cs
	namespace 	
CadernoDigital
 
. 
Models 
.  
Enums  %
{ 
public 

enum 

PerfilEnum 
: 
int  
{ 
Adm 
= 
$num 
, 
Aluno 
= 
$num 
, 
	Professor 
= 
$num 
} 
}		 �
C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Models\LoginModel.cs
	namespace 	
CadernoDigital
 
. 
Models 
{ 
public		 

class		 

LoginModel		 
{

 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 1
)1 2
]2 3
public 
string 
	Matricula 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 1
)1 2
]2 3
public 
string 
Senha 
{ 
get !
;! "
set# &
;& '
}( )
} 
} �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Models\PreferenciaModel.cs
	namespace 	
CadernoDigital
 
. 
Models 
{ 
public 

class 
PreferenciaModel !
:" #
EntityModel$ /
{		 
public

 
int

 
?

 
Preferencia1

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 
int 
? 
Preferencia2  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
? 
Preferencia3  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
? 
Preferencia4  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
? 
Preferencia5  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Guid 
? 

Id_Usuario 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Models\ProfessorModel.cs
	namespace 	
CadernoDigital
 
. 
Models 
{ 
public 

class 
ProfessorModel 
:  !
EntityModel" -
{		 
public

 
string

 
Nome

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
} 
} �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Models\PublicacaoModel.cs
	namespace 	
CadernoDigital
 
. 
Models 
{		 
public

 

class

 
PublicacaoModel

  
:

! "
EntityModel

# .
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! =
)= >
]> ?
public 
string 
Conteudo 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Titulo 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Imagem 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Video 
{ 
get !
;! "
set# &
;& '
}( )
public 
Guid 

Id_Usuario 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Guid #
Id_Disciplina_Professor +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
int 
? 
Preferencia 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Models\RankingModel.cs
	namespace 	
CadernoDigital
 
. 
Models 
{ 
public 

class 
RankingModel 
{		 
public

 
string

 
Nome

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
string 
	Matricula 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
	Pontuacao 
{ 
get "
;" #
set$ '
;' (
}) *
public 
RankingModel 
( 
string "
nome# '
,' (
string) /
	matricula0 9
,9 :
int; >
	pontuacao? H
)H I
{ 	
Nome 
= 
nome 
; 
	Matricula 
= 
	matricula !
;! "
	Pontuacao 
= 
	pontuacao !
;! "
} 	
public 
RankingModel 
( 
string "
nome# '
,' (
string) /
	matricula0 9
)9 :
{ 	
Nome 
= 
nome 
; 
	Matricula 
= 
	matricula !
;! "
} 	
} 
} �

}C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Models\TagModel.cs
	namespace 	
CadernoDigital
 
. 
Models 
{ 
public 

class 
TagModel 
{		 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
MatriculaUsuario &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
DataCadastro $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DateTime 
DataAtualizacao '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
TagModel 
( 
string 
nome #
)# $
{ 	
Nome 
= 
nome 
; 
} 	
} 
} �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Models\UsuarioModel.cs
	namespace 	
CadernoDigital
 
. 
Models 
{		 
public

 

class

 
UsuarioModel

 
:

 
EntityModel

  +
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! J
)J K
]K L
public 
string 
	Matricula 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
( 
ErrorMessage 
=  
$str! ;
); <
]< =
public 
string 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
( 
ErrorMessage 
=  
$str! =
)= >
]> ?
[ 	
EmailAddress	 
( 
ErrorMessage "
=# $
$str% G
)G H
]H I
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
( 
ErrorMessage 
=  
$str! >
)> ?
]? @
public 

PerfilEnum 
? 
Perfil !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
( 
ErrorMessage 
=  
$str! <
)< =
]= >
public 
string 
Senha 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Foto 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	Biografia 
{  !
get" %
;% &
set' *
;* +
}, -
public!! 
int!! 
?!! 
Celular!! 
{!! 
get!! !
;!!! "
set!!# &
;!!& '
}!!( )
public## 
string## 
Genero## 
{## 
get## "
;##" #
set##$ '
;##' (
}##) *
public%% 
string%% 
Curso%% 
{%% 
get%% !
;%%! "
set%%# &
;%%& '
}%%( )
public'' 
bool'' 
SenhaValida'' 
(''  
string''  &
senha''' ,
)'', -
{(( 	
return)) 
Senha)) 
==)) 
senha)) !
;))! "
}** 	
},, 
}-- �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Models\ViewModels\ComentarioViewModel.cs
	namespace 	
CadernoDigital
 
. 
Models 
.  

ViewModels  *
{ 
public 

class 
ComentarioViewModel $
{		 
public

 
string

 
Conteudo

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
string 
Usuario 
{ 
get  #
;# $
set% (
;( )
}* +
public 
Guid 
Id_Publicacao !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Models\ViewModels\ErrorViewModel.cs
	namespace 	
CadernoDigital
 
. 
Models 
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
bool		 
ShowRequestId		 !
=>		" $
!		% &
string		& ,
.		, -
IsNullOrEmpty		- :
(		: ;
	RequestId		; D
)		D E
;		E F
}

 
} �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Models\ViewModels\PreferenciaTagViewModel.cs
	namespace 	
CadernoDigital
 
. 
Models 
.  

ViewModels  *
{ 
public 

class #
PreferenciaTagViewModel (
{		 
public

 
PreferenciaModel

 
Preferencia

  +
{

, -
get

. 1
;

1 2
set

3 6
;

6 7
}

8 9
public 
ICollection 
< 
TagModel #
># $
Tags% )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Models\ViewModels\PublicacaoViewModel.cs
	namespace 	
CadernoDigital
 
. 
Models 
.  

ViewModels  *
{		 
public

 

class

 
PublicacaoViewModel

 $
{ 
public 
PublicacaoModel 

Publicacao )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
ProfessorModel 
	Professor '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
DisciplinaModel 

Disciplina )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
ComentarioViewModel "

Comentario# -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
UsuarioModel 
Usuario #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public $
DisciplinaProfessorModel '
DisciplinaProfessor( ;
{< =
get> A
;A B
setC F
;F G
}H I
public 
ICollection 
< 
ProfessorModel )
>) *
Professores+ 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public 
ICollection 
< 
DisciplinaModel *
>* +
Disciplinas, 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
ICollection 
< 
ComentarioViewModel .
>. /
Comentarios0 ;
{< =
get> A
;A B
setC F
;F G
}H I
public 
	IFormFile 
Imagem 
{  !
get" %
;% &
set' *
;* +
}, -
public   
bool   
Curtida   
{   
get   !
;  ! "
set  # &
;  & '
}  ( )
public"" 
ContadorModel"" 
Contador"" %
{""& '
get""( +
;""+ ,
set""- 0
;""0 1
}""2 3
public$$ 
RankingModel$$ 
Ranking$$ #
{$$$ %
get$$& )
;$$) *
set$$+ .
;$$. /
}$$0 1
public&& 
PreferenciaModel&& 
Preferencia&&  +
{&&, -
get&&. 1
;&&1 2
set&&3 6
;&&6 7
}&&8 9
public(( 
TagModel(( 
Tags(( 
{(( 
get(( "
;((" #
set(($ '
;((' (
}(() *
public** 
Guid** 

UserLogado** 
{**  
get**! $
;**$ %
set**& )
;**) *
}**+ ,
public,, 
ICollection,, 
<,, 
TagModel,, #
>,,# $
Tag,,% (
{,,) *
get,,+ .
;,,. /
set,,0 3
;,,3 4
},,5 6
}.. 
}// �

uC:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Program.cs
	namespace

 	
CadernoDigital


 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Services\Criptografia.cs
	namespace 	
CadernoDigital
 
. 
Services !
{		 
public

 

class

 
Criptografia

 
{ 
public 
string 
Criptografa !
(! "
string" (
valor) .
). /
{ 	
var 
md5 
= 
MD5 
. 
Create  
(  !
)! "
;" #
byte 
[ 
] 
bytes 
= 
Encoding #
.# $
ASCII$ )
.) *
GetBytes* 2
(2 3
valor3 8
)8 9
;9 :
byte 
[ 
] 
cript 
= 
md5 
. 
ComputeHash *
(* +
bytes+ 0
)0 1
;1 2
StringBuilder 
result  
=! "
new# &
StringBuilder' 4
(4 5
)5 6
;6 7
for 
( 
int 
i 
= 
$num 
; 
i 
< 
cript  %
.% &
Length& ,
;, -
i. /
++/ 1
)1 2
{ 
result 
. 
Append 
( 
cript #
[# $
i$ %
]% &
.& '
ToString' /
(/ 0
$str0 4
)4 5
)5 6
;6 7
} 
return 
result 
. 
ToString "
(" #
)# $
;$ %
} 	
public 
void #
GerarSenhaCriptografada +
(+ ,
), -
{ 	
string 
senha 
= 
Criptografa &
(& '
Console' .
.. /
ReadLine/ 7
(7 8
)8 9
)9 :
;: ;
Console!! 
.!! 
	WriteLine!! 
(!! 
senha!! #
)!!# $
;!!$ %
}"" 	
}$$ 
}%% �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Services\IServices\ILoginService.cs
	namespace 	
CadernoDigital
 
. 
Services !
.! "
	IServices" +
{ 
public		 

	interface		 
ILoginService		 "
{

 
UsuarioModel 

BuscaLogin 
(  
string  &
	matricula' 0
)0 1
;1 2
} 
} �	
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Services\IServices\IPreferenciaService.cs
	namespace 	
CadernoDigital
 
. 
Services !
.! "
	IServices" +
{ 
public		 

	interface		 
IPreferenciaService		 (
{

 
PreferenciaModel 
	Adicionar "
(" #
PreferenciaModel# 3
preferencia4 ?
)? @
;@ A
PreferenciaModel 
BuscarPorIdUser (
(( )
)) *
;* +
List 
< 
TagModel 
> 
BuscarPorTags $
($ %
)% &
;& '
PreferenciaModel 
Salvar 
(  
PreferenciaModel  0
preferencia1 <
)< =
;= >
List 
< 
TagModel 
> #
BuscarTagPorPreferencia .
(. /
PreferenciaModel/ ?
preferencia@ K
)K L
;L M
} 
} �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Services\IServices\IPublicacaoService.cs
	namespace 	
CadernoDigital
 
. 
Services !
.! "
	IServices" +
{		 
public

 

	interface

 
IPublicacaoService

 '
{ 
List 
< 
PublicacaoViewModel  
>  !

BucarTodos" ,
(, -
)- .
;. /
PublicacaoModel 
BuscarPorID #
(# $
Guid$ (
id) +
)+ ,
;, -
PublicacaoModel 
	Adicionar !
(! "
PublicacaoModel" 1

publicacao2 <
)< =
;= >
ComentarioModel 
Comentar  
(  !
string! '
id( *
,* +
string, 2
coment3 9
)9 :
;: ;
PublicacaoViewModel 
ComentarioPorId +
(+ ,
Guid, 0
id1 3
)3 4
;4 5
PublicacaoModel 
	Atualizar !
(! "
PublicacaoModel" 1

publicacao2 <
)< =
;= >
List 
< 
DisciplinaModel 
> 
BuscarDisciplinas /
(/ 0
)0 1
;1 2
List 
< 
ProfessorModel 
> 
BuscarProfessores .
(. /
)/ 0
;0 1
DisciplinaModel !
BuscarDisciplinaPorID -
(- .
Guid. 2
id3 5
)5 6
;6 7
ProfessorModel  
BuscarProfessorPorID +
(+ ,
Guid, 0
id1 3
)3 4
;4 5
List   
<   
ComentarioViewModel    
>    !
BuscarComentarios  " 3
(  3 4
Guid  4 8
idPublicacao  9 E
)  E F
;  F G
Guid"" '
BuscarIdDisciplinaProfessor"" (
(""( )
Guid"") -
dis"". 1
,""1 2
Guid""3 7
prof""8 <
)""< =
;""= >
void$$ 
AtualizaCurtida$$ 
($$ 
Guid$$ !

publicacao$$" ,
)$$, -
;$$- .
string&& 
TratarUpload&& 
(&& 
PublicacaoViewModel&& /
pub&&0 3
)&&3 4
;&&4 5
})) 
}** �
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Services\IServices\IUsuarioService.cs
	namespace 	
CadernoDigital
 
. 
Services !
.! "
	IServices" +
{ 
public		 

	interface		 
IUsuarioService		 $
{

 
List 
< 
PublicacaoViewModel  
>  !

BucarTodos" ,
(, -
)- .
;. /
} 
} �

�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Services\LoginService.cs
	namespace

 	
CadernoDigital


 
.

 
Services

 !
{ 
public 

class 
LoginService 
: 
ILoginService  -
{ 
private 
readonly 
Context  
_context! )
;) *
public 
LoginService 
( 
Context #
context$ +
)+ ,
{ 	
_context 
= 
context 
; 
} 	
public 
UsuarioModel 

BuscaLogin &
(& '
string' -
	matricula. 7
)7 8
{ 	
return 
_context 
. 
Usuario #
.# $
FirstOrDefault$ 2
(2 3
x3 4
=>5 7
x8 9
.9 :
	Matricula: C
.C D
ToUpperD K
(K L
)L M
==N P
	matriculaQ Z
.Z [
ToUpper[ b
(b c
)c d
)d e
;e f
} 	
} 
} �M
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Services\PreferenciaService.cs
	namespace

 	
CadernoDigital


 
.

 
Services

 !
{ 
public 

class 
PreferenciaService #
:$ %
IPreferenciaService& 9
{ 
private 
readonly 
Context  
_context! )
;) *
private 
readonly 
ISessao  
_sessao! (
;( )
public 
PreferenciaService !
(! "
Context" )
context* 1
,1 2
ISessao3 :
sessao; A
)A B
{ 	
_context 
= 
context 
; 
_sessao 
= 
sessao 
; 
} 	
public 
PreferenciaModel 
	Adicionar  )
() *
PreferenciaModel* :
preferencia; F
)F G
{ 	
preferencia 
. 
DataCadastro $
=% &
DateTime' /
./ 0
Now0 3
;3 4
preferencia 
. 
DataAtualizacao '
=( )
DateTime* 2
.2 3
Now3 6
;6 7
preferencia 
. 

Id_Usuario "
=# $
_sessao% ,
., -!
BuscarSessaoDoUsuario- B
(B C
)C D
.D E
IdE G
;G H
_context 
. 
Preferencia  
.  !
Add! $
($ %
preferencia% 0
)0 1
;1 2
_context 
. 
SaveChanges  
(  !
)! "
;" #
return 
preferencia 
; 
}   	
public"" 
PreferenciaModel"" 
BuscarPorIdUser""  /
(""/ 0
)""0 1
{## 	
return$$ 
_context$$ 
.$$ 
Preferencia$$ '
.$$' (
FirstOrDefault$$( 6
($$6 7
x$$7 8
=>$$9 ;
x$$< =
.$$= >

Id_Usuario$$> H
==$$I K
_sessao$$L S
.$$S T!
BuscarSessaoDoUsuario$$T i
($$i j
)$$j k
.$$k l
Id$$l n
)$$n o
;$$o p
}%% 	
public'' 
List'' 
<'' 
TagModel'' 
>'' 
BuscarPorTags'' +
(''+ ,
)'', -
{(( 	
return)) 
_context)) 
.)) 
Tag)) 
.))  
ToList))  &
())& '
)))' (
;))( )
}** 	
public,, 
List,, 
<,, 
TagModel,, 
>,, #
BuscarTagPorPreferencia,, 5
(,,5 6
PreferenciaModel,,6 F
preferencia,,G R
),,R S
{-- 	
List.. 
<.. 
TagModel.. 
>.. 
tag.. 
=..  
new..! $
List..% )
<..) *
TagModel..* 2
>..2 3
(..3 4
)..4 5
;..5 6
if// 
(// 
preferencia// 
!=// 
null// #
)//# $
{00 
if11 
(11 
preferencia11 
.11  
Preferencia111  ,
!=11- /
null110 4
)114 5
{22 
var33 
pref133 
=33 
_context33  (
.33( )
Tag33) ,
.33, -
FirstOrDefault33- ;
(33; <
x33< =
=>33> @
x33A B
.33B C
Id33C E
==33F H
preferencia33I T
.33T U
Preferencia133U a
)33a b
;33b c
tag44 
.44 
Add44 
(44 
new44 
TagModel44  (
(44( )
pref144) .
.44. /
Nome44/ 3
)443 4
)444 5
;445 6
}55 
if66 
(66 
preferencia66 
.66  
Preferencia266  ,
!=66- /
null660 4
)664 5
{77 
var88 
pref288 
=88 
_context88  (
.88( )
Tag88) ,
.88, -
FirstOrDefault88- ;
(88; <
x88< =
=>88> @
x88A B
.88B C
Id88C E
==88F H
preferencia88I T
.88T U
Preferencia288U a
)88a b
;88b c
tag99 
.99 
Add99 
(99 
new99 
TagModel99  (
(99( )
pref299) .
.99. /
Nome99/ 3
)993 4
)994 5
;995 6
}:: 
if;; 
(;; 
preferencia;; 
.;;  
Preferencia3;;  ,
!=;;- /
null;;0 4
);;4 5
{<< 
var== 
pref3== 
=== 
_context==  (
.==( )
Tag==) ,
.==, -
FirstOrDefault==- ;
(==; <
x==< =
=>==> @
x==A B
.==B C
Id==C E
====F H
preferencia==I T
.==T U
Preferencia3==U a
)==a b
;==b c
tag>> 
.>> 
Add>> 
(>> 
new>> 
TagModel>>  (
(>>( )
pref3>>) .
.>>. /
Nome>>/ 3
)>>3 4
)>>4 5
;>>5 6
}?? 
if@@ 
(@@ 
preferencia@@ 
.@@  
Preferencia4@@  ,
!=@@- /
null@@0 4
)@@4 5
{AA 
varBB 
pref4BB 
=BB 
_contextBB  (
.BB( )
TagBB) ,
.BB, -
FirstOrDefaultBB- ;
(BB; <
xBB< =
=>BB> @
xBBA B
.BBB C
IdBBC E
==BBF H
preferenciaBBI T
.BBT U
Preferencia4BBU a
)BBa b
;BBb c
tagCC 
.CC 
AddCC 
(CC 
newCC 
TagModelCC  (
(CC( )
pref4CC) .
.CC. /
NomeCC/ 3
)CC3 4
)CC4 5
;CC5 6
}DD 
ifEE 
(EE 
preferenciaEE 
.EE  
Preferencia5EE  ,
!=EE- /
nullEE0 4
)EE4 5
{FF 
varGG 
pref5GG 
=GG 
_contextGG  (
.GG( )
TagGG) ,
.GG, -
FirstOrDefaultGG- ;
(GG; <
xGG< =
=>GG> @
xGGA B
.GGB C
IdGGC E
==GGF H
preferenciaGGI T
.GGT U
Preferencia5GGU a
)GGa b
;GGb c
tagHH 
.HH 
AddHH 
(HH 
newHH 
TagModelHH  (
(HH( )
pref5HH) .
.HH. /
NomeHH/ 3
)HH3 4
)HH4 5
;HH5 6
}II 
}KK 
returnLL 
tagLL 
;LL 
}NN 	
publicPP 
PreferenciaModelPP 
SalvarPP  &
(PP& '
PreferenciaModelPP' 7
preferenciaPP8 C
)PPC D
{QQ 	
PreferenciaModelRR 
preferenciaDBRR *
=RR+ ,
BuscarPorIdUserRR- <
(RR< =
)RR= >
;RR> ?
ifSS 
(SS 
preferenciaDBSS 
==SS  
nullSS! %
)SS% &
{TT 
preferenciaUU 
.UU 
DataCadastroUU (
=UU) *
DateTimeUU+ 3
.UU3 4
NowUU4 7
;UU7 8
preferenciaVV 
.VV 
DataAtualizacaoVV +
=VV, -
DateTimeVV. 6
.VV6 7
NowVV7 :
;VV: ;
preferenciaWW 
.WW 

Id_UsuarioWW &
=WW' (
_sessaoWW) 0
.WW0 1!
BuscarSessaoDoUsuarioWW1 F
(WWF G
)WWG H
.WWH I
IdWWI K
;WWK L
_contextXX 
.XX 
PreferenciaXX $
.XX$ %
AddXX% (
(XX( )
preferenciaXX) 4
)XX4 5
;XX5 6
_contextYY 
.YY 
SaveChangesYY $
(YY$ %
)YY% &
;YY& '
}ZZ 
else[[ 
{\\ 
preferenciaDB]] 
.]] 
Preferencia1]] *
=]]+ ,
preferencia]]- 8
.]]8 9
Preferencia1]]9 E
;]]E F
preferenciaDB^^ 
.^^ 
Preferencia2^^ *
=^^+ ,
preferencia^^- 8
.^^8 9
Preferencia2^^9 E
;^^E F
preferenciaDB__ 
.__ 
Preferencia3__ *
=__+ ,
preferencia__- 8
.__8 9
Preferencia3__9 E
;__E F
preferenciaDB`` 
.`` 
Preferencia4`` *
=``+ ,
preferencia``- 8
.``8 9
Preferencia4``9 E
;``E F
preferenciaDBaa 
.aa 
Preferencia5aa *
=aa+ ,
preferenciaaa- 8
.aa8 9
Preferencia5aa9 E
;aaE F
preferenciaDBbb 
.bb 
DataAtualizacaobb -
=bb. /
DateTimebb0 8
.bb8 9
Nowbb9 <
;bb< =
_contextcc 
.cc 
Preferenciacc $
.cc$ %
Updatecc% +
(cc+ ,
preferenciaDBcc, 9
)cc9 :
;cc: ;
_contextdd 
.dd 
SaveChangesdd $
(dd$ %
)dd% &
;dd& '
}ee 
returnff 
preferenciaDBff  
;ff  !
}gg 	
}hh 
}ii ��
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Services\PublicacaoService.cs
	namespace 	
CadernoDigital
 
. 
Services !
{ 
public 

class 
PublicacaoService "
:# $
IPublicacaoService% 7
{ 
private 
readonly 
Context  
_context! )
;) *
private 
readonly 
ISessao  
_sessao! (
;( )
private 
string 
_caminhoImagem %
;% &
private 
IPreferenciaService #
_preferencia$ 0
;0 1
public 
PublicacaoService  
(  !
Context! (
context) 0
,0 1
ISessao2 9
sessao: @
,@ A
IWebHostEnvironmentB U
caminhoImagemV c
,c d
IPreferenciaService 
preferencia  +
)+ ,
{ 	
_context 
= 
context 
; 
_sessao 
= 
sessao 
; 
_caminhoImagem 
= 
caminhoImagem *
.* +
WebRootPath+ 6
;6 7
_preferencia 
= 
preferencia &
;& '
} 	
public 
List 
< 
PublicacaoViewModel '
>' (

BucarTodos) 3
(3 4
)4 5
{ 	
var   
pub   
=   
_context   
.   

Publicacao   )
.  ) *
ToList  * 0
(  0 1
)  1 2
;  2 3
List"" 
<"" 
PublicacaoViewModel"" $
>""$ %

publicacao""& 0
=""1 2
new""3 6
List""7 ;
<""; <
PublicacaoViewModel""< O
>""O P
(""P Q
)""Q R
;""R S
for$$ 
($$ 
var$$ 
i$$ 
=$$ 
$num$$ 
;$$ 
i$$ 
<$$ 
pub$$  #
.$$# $
Count$$$ )
;$$) *
i$$+ ,
++$$, .
)$$. /
{%% 
var&& 
result&& 
=&& 
_context&& %
.&&% &
DisciplinaProfessor&&& 9
.&&9 :
FirstOrDefault&&: H
(&&H I
x&&I J
=>&&K M
x&&N O
.&&O P
Id&&P R
==&&S U
pub&&V Y
[&&Y Z
i&&Z [
]&&[ \
.&&\ ]#
Id_Disciplina_Professor&&] t
)&&t u
;&&u v
var(( 
dis(( 
=(( 
_context(( "
.((" #

Disciplina((# -
.((- .
FirstOrDefault((. <
(((< =
x((= >
=>((? A
x((B C
.((C D
Id((D F
==((G I
result((J P
.((P Q
Id_Disciplina((Q ^
)((^ _
;((_ `
var)) 
pro)) 
=)) 
_context)) "
.))" #
	Professor))# ,
.)), -
FirstOrDefault))- ;
()); <
x))< =
=>))> @
x))A B
.))B C
Id))C E
==))F H
result))I O
.))O P
Id_Professor))P \
)))\ ]
;))] ^
var** 
coment** 
=** 
BuscarComentarios** .
(**. /
pub**/ 2
[**2 3
i**3 4
]**4 5
.**5 6
Id**6 8
)**8 9
;**9 :
var++ 
cont++ 
=++ 
Contador++ #
(++# $
pub++$ '
[++' (
i++( )
]++) *
.++* +
Id+++ -
)++- .
;++. /

publicacao-- 
.-- 
Add-- 
(-- 
new-- "
PublicacaoViewModel--# 6
(--6 7
)--7 8
{.. 

Publicacao// 
=//  
pub//! $
[//$ %
i//% &
]//& '
,//' (

Disciplina00 
=00  
dis00! $
,00$ %
	Professor11 
=11 
pro11  #
,11# $
Comentarios22 
=22  !
coment22" (
,22( )
Contador33 
=33 
cont33 #
}44 
)44 
;44 
}55 
;55 
if77 
(77 

publicacao77 
.77 
Count77  
(77  !
)77! "
!=77# %
$num77& '
)77' (
{88 
var99 
tag99 
=99 
PreferenciaParaTag99 ,
(99, -
)99- .
;99. /
for:: 
(:: 
int:: 
i:: 
=:: 
$num:: 
;:: 
i::  !
<::" #
tag::$ '
.::' (
Count::( -
;::- .
i::/ 0
++::0 2
)::2 3
{;; 
if<< 
(<< 
i<< 
<<< 

publicacao<< &
.<<& '
Count<<' ,
(<<, -
)<<- .
)<<. /
{<<0 1

publicacao<<2 <
[<<< =
i<<= >
]<<> ?
.<<? @
Tags<<@ D
=<<E F
tag<<G J
[<<J K
i<<K L
]<<L M
;<<M N
}<<O P
else== 
{== 

publicacao== %
.==% &
Add==& )
(==) *
new==* -
PublicacaoViewModel==. A
(==A B
)==B C
{==D E
Tags==F J
===K L
tag==M P
[==P Q
i==Q R
]==R S
}==T U
)==U V
;==V W
}==X Y
}>> 
var@@ 
idUser@@ 
=@@ 
_sessao@@ $
.@@$ %!
BuscarSessaoDoUsuario@@% :
(@@: ;
)@@; <
.@@< =
Id@@= ?
;@@? @

publicacaoAA 
[AA 
$numAA 
]AA 
.AA 
UsuarioAA %
=AA& '
_contextAA( 0
.AA0 1
UsuarioAA1 8
.AA8 9
FirstOrDefaultAA9 G
(AAG H
xAAH I
=>AAJ L
xAAM N
.AAN O
IdAAO Q
.AAQ R
ToStringAAR Z
(AAZ [
)AA[ \
==AA] _
idUserAA` f
.AAf g
ToStringAAg o
(AAo p
)AAp q
)AAq r
;AAr s
varBB 
rankBB 
=BB 
RankingBB "
(BB" #
)BB# $
;BB$ %
forCC 
(CC 
intCC 
iCC 
=CC 
$numCC 
;CC 
iCC  !
<CC" #
rankCC$ (
.CC( )
CountCC) .
(CC. /
)CC/ 0
;CC0 1
iCC2 3
++CC3 5
)CC5 6
{DD 
ifEE 
(EE 
iEE 
<EE 

publicacaoEE &
.EE& '
CountEE' ,
(EE, -
)EE- .
)EE. /
{EE0 1

publicacaoEE2 <
[EE< =
iEE= >
]EE> ?
.EE? @
RankingEE@ G
=EEH I
rankEEJ N
[EEN O
iEEO P
]EEP Q
;EEQ R
}EES T
elseFF 
{FF 

publicacaoFF %
.FF% &
AddFF& )
(FF) *
newFF* -
PublicacaoViewModelFF. A
(FFA B
)FFB C
{FFD E
RankingFFF M
=FFN O
rankFFP T
[FFT U
iFFU V
]FFV W
}FFX Y
)FFY Z
;FFZ [
}FF\ ]
}GG 
}HH 
varJJ 
prefJJ 
=JJ 
_preferenciaJJ #
.JJ# $
BuscarPorIdUserJJ$ 3
(JJ3 4
)JJ4 5
;JJ5 6
ifLL 
(LL 
prefLL 
!=LL 
nullLL 
)LL 
{MM 
ifNN 
(NN 
prefNN 
.NN 
Preferencia5NN %
!=NN& (
nullNN) -
)NN- .
{OO 

publicacaoOO 
.OO 
OrderByOO $
(OO$ %
xOO% &
=>OO' )
xOO* +
.OO+ ,

PublicacaoOO, 6
.OO6 7
PreferenciaOO7 B
==OOC E
prefOOF J
.OOJ K
Preferencia5OOK W
)OOW X
;OOX Y
}OOZ [
ifPP 
(PP 
prefPP 
.PP 
Preferencia4PP %
!=PP& (
nullPP) -
)PP- .
{QQ 

publicacaoQQ 
.QQ 
OrderByQQ $
(QQ$ %
xQQ% &
=>QQ' )
xQQ* +
.QQ+ ,

PublicacaoQQ, 6
.QQ6 7
PreferenciaQQ7 B
==QQC E
prefQQF J
.QQJ K
Preferencia4QQK W
)QQW X
;QQX Y
}QQZ [
ifRR 
(RR 
prefRR 
.RR 
Preferencia3RR %
!=RR& (
nullRR) -
)RR- .
{SS 

publicacaoSS 
.SS 
OrderBySS $
(SS$ %
xSS% &
=>SS' )
xSS* +
.SS+ ,

PublicacaoSS, 6
.SS6 7
PreferenciaSS7 B
==SSC E
prefSSF J
.SSJ K
Preferencia3SSK W
)SSW X
;SSX Y
}SSZ [
ifTT 
(TT 
prefTT 
.TT 
Preferencia2TT %
!=TT& (
nullTT) -
)TT- .
{UU 

publicacaoUU 
.UU 
OrderByUU $
(UU$ %
xUU% &
=>UU' )
xUU* +
.UU+ ,

PublicacaoUU, 6
.UU6 7
PreferenciaUU7 B
==UUC E
prefUUF J
.UUJ K
Preferencia2UUK W
)UUW X
;UUX Y
}UUZ [
ifVV 
(VV 
prefVV 
.VV 
Preferencia1VV %
!=VV& (
nullVV) -
)VV- .
{WW 

publicacaoWW 
.WW 
OrderByWW $
(WW$ %
xWW% &
=>WW' )
xWW* +
.WW+ ,

PublicacaoWW, 6
.WW6 7
PreferenciaWW7 B
==WWC E
prefWWF J
.WWJ K
Preferencia1WWK W
)WWW X
;WWX Y
}WWZ [
}XX 
returnZZ 

publicacaoZZ 
;ZZ 
}[[ 	
public]] 
PublicacaoModel]] 
BuscarPorID]] *
(]]* +
Guid]]+ /
id]]0 2
)]]2 3
{^^ 	
return__ 
_context__ 
.__ 

Publicacao__ &
.__& '
FirstOrDefault__' 5
(__5 6
x__6 7
=>__8 :
x__; <
.__< =
Id__= ?
==__@ B
id__C E
)__E F
;__F G
}`` 	
publicbb 
PublicacaoModelbb 
	Adicionarbb (
(bb( )
PublicacaoModelbb) 8

publicacaobb9 C
)bbC D
{cc 	

publicacaodd 
.dd 
DataCadastrodd #
=dd$ %
DateTimedd& .
.dd. /
Nowdd/ 2
;dd2 3

publicacaoee 
.ee 
DataAtualizacaoee &
=ee' (
DateTimeee) 1
.ee1 2
Nowee2 5
;ee5 6

publicacaoff 
.ff 

Id_Usuarioff !
=ff" #
_sessaoff$ +
.ff+ ,!
BuscarSessaoDoUsuarioff, A
(ffA B
)ffB C
.ffC D
IdffD F
;ffF G
_contextgg 
.gg 

Publicacaogg 
.gg  
Addgg  #
(gg# $

publicacaogg$ .
)gg. /
;gg/ 0
_contexthh 
.hh 
SaveChangeshh  
(hh  !
)hh! "
;hh" #
returnii 

publicacaoii 
;ii 
}jj 	
publicll 
ComentarioModelll 
Comentarll '
(ll' (
stringll( .
idll/ 1
,ll1 2
stringll3 9
comentll: @
)ll@ A
{mm 	
ComentarioModelnn 

comentarionn &
=nn' (
newnn) ,
ComentarioModelnn- <
(nn< =
)nn= >
;nn> ?

comentariooo 
.oo 
Conteudooo 
=oo  !
comentoo" (
;oo( )

comentariopp 
.pp 
Id_Publicacaopp $
=pp% &
Guidpp' +
.pp+ ,
Parsepp, 1
(pp1 2
idpp2 4
)pp4 5
;pp5 6

comentarioqq 
.qq 

Id_Usuarioqq !
=qq" #
_sessaoqq$ +
.qq+ ,!
BuscarSessaoDoUsuarioqq, A
(qqA B
)qqB C
.qqC D
IdqqD F
;qqF G

comentariorr 
.rr 
DataCadastrorr #
=rr$ %
DateTimerr& .
.rr. /
Nowrr/ 2
;rr2 3

comentarioss 
.ss 
DataAtualizacaoss &
=ss' (
DateTimess) 1
.ss1 2
Nowss2 5
;ss5 6
_contexttt 
.tt 

Comentariott 
.tt  
Addtt  #
(tt# $

comentariott$ .
)tt. /
;tt/ 0
_contextuu 
.uu 
SaveChangesuu  
(uu  !
)uu! "
;uu" #
returnvv 

comentariovv 
;vv 
}xx 	
publiczz 
PublicacaoViewModelzz "
ComentarioPorIdzz# 2
(zz2 3
Guidzz3 7
idzz8 :
)zz: ;
{{{ 	
PublicacaoViewModel|| 

publicacao||  *
=||+ ,
new||- 0
PublicacaoViewModel||1 D
(||D E
)||E F
;||F G

publicacao}} 
.}} 

Publicacao}} !
=}}" #
BuscarPorID}}$ /
(}}/ 0
id}}0 2
)}}2 3
;}}3 4
var~~ 
result~~ 
=~~ 
_context~~ !
.~~! "
DisciplinaProfessor~~" 5
.~~5 6
FirstOrDefault~~6 D
(~~D E
x~~E F
=>~~G I
x~~J K
.~~K L
Id~~L N
==~~O Q

publicacao~~R \
.~~\ ]

Publicacao~~] g
.~~g h#
Id_Disciplina_Professor~~h 
)	~~ �
;
~~� �

publicacao 
. 
	Professor  
=! " 
BuscarProfessorPorID# 7
(7 8
result8 >
.> ?
Id_Professor? K
)K L
;L M

publicacao
�� 
.
�� 

Disciplina
�� !
=
��" ##
BuscarDisciplinaPorID
��$ 9
(
��9 :
result
��: @
.
��@ A
Id_Disciplina
��A N
)
��N O
;
��O P

publicacao
�� 
.
�� 
Comentarios
�� "
=
��# $
BuscarComentarios
��% 6
(
��6 7
id
��7 9
)
��9 :
;
��: ;

publicacao
�� 
.
�� 
Curtida
�� 
=
��  
BuscarCurtida
��! .
(
��. /
id
��/ 1
)
��1 2
;
��2 3

publicacao
�� 
.
�� 
Contador
�� 
=
��  !
Contador
��" *
(
��* +
id
��+ -
)
��- .
;
��. /
return
�� 

publicacao
�� 
;
�� 
}
�� 	
public
�� 
PublicacaoModel
�� 
	Atualizar
�� (
(
��( )
PublicacaoModel
��) 8

publicacao
��9 C
)
��C D
{
�� 	
PublicacaoModel
�� 
publicacaoDB
�� (
=
��) *
BuscarPorID
��+ 6
(
��6 7

publicacao
��7 A
.
��A B
Id
��B D
)
��D E
;
��E F
if
�� 
(
�� 
publicacaoDB
�� 
==
�� 
null
��  $
)
��$ %
throw
��& +
new
��, /
	Exception
��0 9
(
��9 :
$str
��: g
)
��g h
;
��h i
publicacaoDB
�� 
.
�� 
Conteudo
�� !
=
��" #

publicacao
��$ .
.
��. /
Conteudo
��/ 7
;
��7 8
publicacaoDB
�� 
.
�� 

Id_Usuario
�� #
=
��$ %
_sessao
��& -
.
��- .#
BuscarSessaoDoUsuario
��. C
(
��C D
)
��D E
.
��E F
Id
��F H
;
��H I
publicacaoDB
�� 
.
�� 
DataAtualizacao
�� (
=
��) *
DateTime
��+ 3
.
��3 4
Now
��4 7
;
��7 8
_context
�� 
.
�� 

Publicacao
�� 
.
��  
Update
��  &
(
��& '
publicacaoDB
��' 3
)
��3 4
;
��4 5
_context
�� 
.
�� 
SaveChanges
��  
(
��  !
)
��! "
;
��" #
return
�� 
publicacaoDB
�� 
;
��  
}
�� 	
public
�� 
List
�� 
<
�� 
DisciplinaModel
�� #
>
��# $
BuscarDisciplinas
��% 6
(
��6 7
)
��7 8
{
�� 	
return
�� 
_context
�� 
.
�� 

Disciplina
�� &
.
��& '
ToList
��' -
(
��- .
)
��. /
;
��/ 0
}
�� 	
public
�� 
List
�� 
<
�� 
ProfessorModel
�� "
>
��" #
BuscarProfessores
��$ 5
(
��5 6
)
��6 7
{
�� 	
return
�� 
_context
�� 
.
�� 
	Professor
�� %
.
��% &
ToList
��& ,
(
��, -
)
��- .
;
��. /
}
�� 	
public
�� 
List
�� 
<
�� !
ComentarioViewModel
�� '
>
��' (
BuscarComentarios
��) :
(
��: ;
Guid
��; ?
idPublicacao
��@ L
)
��L M
{
�� 	
List
�� 
<
�� 
ComentarioModel
��  
>
��  !
result
��" (
=
��) *
_context
��+ 3
.
��3 4

Comentario
��4 >
.
��> ?
Where
��? D
(
��D E
x
��E F
=>
��G I
x
��J K
.
��K L
Id_Publicacao
��L Y
==
��Z \
idPublicacao
��] i
)
��i j
.
��j k
ToList
��k q
(
��q r
)
��r s
;
��s t
List
�� 
<
�� !
ComentarioViewModel
�� $
>
��$ %

comentario
��& 0
=
��1 2
new
��3 6
List
��7 ;
<
��; <!
ComentarioViewModel
��< O
>
��O P
(
��P Q
)
��Q R
;
��R S
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
result
��  &
.
��& '
Count
��' ,
;
��, -
i
��. /
++
��/ 1
)
��1 2
{
�� 
var
�� 
user
�� 
=
�� 
_context
�� #
.
��# $
Usuario
��$ +
.
��+ ,
FirstOrDefault
��, :
(
��: ;
x
��; <
=>
��= ?
x
��@ A
.
��A B
Id
��B D
==
��E G
result
��H N
[
��N O
i
��O P
]
��P Q
.
��Q R

Id_Usuario
��R \
)
��\ ]
;
��] ^

comentario
�� 
.
�� 
Add
�� 
(
�� 
new
�� "!
ComentarioViewModel
��# 6
(
��6 7
)
��7 8
{
�� 
Conteudo
�� 
=
�� 
result
�� %
[
��% &
i
��& '
]
��' (
.
��( )
Conteudo
��) 1
,
��1 2
Usuario
�� 
=
�� 
user
�� "
.
��" #
Nome
��# '
,
��' (
Id_Publicacao
�� !
=
��" #
result
��$ *
[
��* +
i
��+ ,
]
��, -
.
��- .
Id_Publicacao
��. ;
,
��; <
}
�� 
)
�� 
;
�� 
}
�� 
;
�� 
return
�� 

comentario
�� 
;
�� 
}
�� 	
public
�� 
Guid
�� )
BuscarIdDisciplinaProfessor
�� /
(
��/ 0
Guid
��0 4
dis
��5 8
,
��8 9
Guid
��: >
prof
��? C
)
��C D
{
�� 	
var
�� 
result
�� 
=
�� 
_context
�� !
.
��! "!
DisciplinaProfessor
��" 5
.
��5 6
Where
��6 ;
(
��; <
x
��< =
=>
��> @
x
��A B
.
��B C
Id_Disciplina
��C P
==
��Q S
dis
��T W
&&
��X Z
x
��[ \
.
��\ ]
Id_Professor
��] i
==
��j l
prof
��m q
)
��q r
.
��r s
FirstOrDefault��s �
(��� �
)��� �
;��� �
return
�� 
result
�� 
.
�� 
Id
�� 
;
�� 
}
�� 	
public
�� 
DisciplinaModel
�� #
BuscarDisciplinaPorID
�� 4
(
��4 5
Guid
��5 9
id
��: <
)
��< =
{
�� 	
return
�� 
_context
�� 
.
�� 

Disciplina
�� &
.
��& '
FirstOrDefault
��' 5
(
��5 6
x
��6 7
=>
��8 :
x
��; <
.
��< =
Id
��= ?
==
��@ B
id
��C E
)
��E F
;
��F G
}
�� 	
public
�� 
ProfessorModel
�� "
BuscarProfessorPorID
�� 2
(
��2 3
Guid
��3 7
id
��8 :
)
��: ;
{
�� 	
return
�� 
_context
�� 
.
�� 
	Professor
�� %
.
��% &
FirstOrDefault
��& 4
(
��4 5
x
��5 6
=>
��7 9
x
��: ;
.
��; <
Id
��< >
==
��? A
id
��B D
)
��D E
;
��E F
}
�� 	
public
�� 
void
�� 
AtualizaCurtida
�� #
(
��# $
Guid
��$ (

publicacao
��) 3
)
��3 4
{
�� 	
var
�� 
usuario
�� 
=
�� 
_sessao
�� !
.
��! "#
BuscarSessaoDoUsuario
��" 7
(
��7 8
)
��8 9
.
��9 :
Id
��: <
;
��< =
var
�� 
result
�� 
=
�� 
_context
�� !
.
��! "
Curtida
��" )
.
��) *
Where
��* /
(
��/ 0
x
��0 1
=>
��2 4
x
��5 6
.
��6 7

Id_Usuario
��7 A
==
��B D
usuario
��E L
&&
��M O
x
��P Q
.
��Q R
Id_Publicacao
��R _
==
��` b

publicacao
��c m
)
��m n
.
��n o
SingleOrDefault
��o ~
(
��~ 
)�� �
;��� �
CurtidaModel
�� 
curtida
��  
=
��! "
new
��# &
CurtidaModel
��' 3
(
��3 4
)
��4 5
;
��5 6
curtida
�� 
.
�� 
Id_Publicacao
�� !
=
��" #

publicacao
��$ .
;
��. /
curtida
�� 
.
�� 

Id_Usuario
�� 
=
��  
usuario
��! (
;
��( )
if
�� 
(
�� 
result
�� 
==
�� 
null
�� 
)
�� 
{
�� 
curtida
�� 
.
�� 
DataCadastro
�� $
=
��% &
DateTime
��' /
.
��/ 0
Now
��0 3
;
��3 4
curtida
�� 
.
�� 
DataAtualizacao
�� '
=
��( )
DateTime
��* 2
.
��2 3
Now
��3 6
;
��6 7
_context
�� 
.
�� 
Curtida
��  
.
��  !
Add
��! $
(
��$ %
curtida
��% ,
)
��, -
;
��- .
}
�� 
else
�� 
{
�� 
_context
�� 
.
�� 
Curtida
��  
.
��  !
Remove
��! '
(
��' (
result
��( .
)
��. /
;
��/ 0
}
�� 
_context
�� 
.
�� 
SaveChanges
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
bool
�� 
BuscarCurtida
�� !
(
��! "
Guid
��" &

publicacao
��' 1
)
��1 2
{
�� 	
var
�� 
usuario
�� 
=
�� 
_sessao
�� !
.
��! "#
BuscarSessaoDoUsuario
��" 7
(
��7 8
)
��8 9
.
��9 :
Id
��: <
;
��< =
var
�� 
result
�� 
=
�� 
_context
�� !
.
��! "
Curtida
��" )
.
��) *
Where
��* /
(
��/ 0
x
��0 1
=>
��2 4
x
��5 6
.
��6 7

Id_Usuario
��7 A
==
��B D
usuario
��E L
&&
��M O
x
��P Q
.
��Q R
Id_Publicacao
��R _
==
��` b

publicacao
��c m
)
��m n
.
��n o
SingleOrDefault
��o ~
(
��~ 
)�� �
;��� �
if
�� 
(
�� 
result
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
else
�� 
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
ContadorModel
�� 
Contador
�� %
(
��% &
Guid
��& *
id
��+ -
)
��- .
{
�� 	
ContadorModel
�� 
result
��  
=
��! "
new
��# &
ContadorModel
��' 4
(
��4 5
)
��5 6
;
��6 7
result
�� 
.
�� 

CurtidaQtd
�� 
=
�� 
_context
��  (
.
��( )
Curtida
��) 0
.
��0 1
Count
��1 6
(
��6 7
x
��7 8
=>
��9 ;
x
��< =
.
��= >
Id_Publicacao
��> K
==
��L N
id
��O Q
)
��Q R
;
��R S
result
�� 
.
�� 
ComentarioQtd
��  
=
��! "
_context
��# +
.
��+ ,

Comentario
��, 6
.
��6 7
Count
��7 <
(
��< =
x
��= >
=>
��? A
x
��B C
.
��C D
Id_Publicacao
��D Q
==
��R T
id
��U W
)
��W X
;
��X Y
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
List
�� 
<
�� 
RankingModel
��  
>
��  !
Ranking
��" )
(
��) *
)
��* +
{
�� 	
var
�� 
users
�� 
=
�� 
_context
��  
.
��  !
Usuario
��! (
.
��( )
ToList
��) /
(
��/ 0
)
��0 1
;
��1 2
List
�� 
<
�� 
RankingModel
�� 
>
�� 
ranking
�� &
=
��' (
new
��) ,
List
��- 1
<
��1 2
RankingModel
��2 >
>
��> ?
(
��? @
)
��@ A
;
��A B
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
users
��  %
.
��% &
Count
��& +
(
��+ ,
)
��, -
;
��- .
i
��/ 0
++
��0 2
)
��2 3
{
�� 
var
�� 
pub
�� 
=
�� 
_context
�� "
.
��" #

Publicacao
��# -
.
��- .
Where
��. 3
(
��3 4
x
��4 5
=>
��6 8
x
��9 :
.
��: ;

Id_Usuario
��; E
==
��F H
users
��I N
[
��N O
i
��O P
]
��P Q
.
��Q R
Id
��R T
)
��T U
.
��U V
ToList
��V \
(
��\ ]
)
��] ^
;
��^ _
ranking
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
RankingModel
��  ,
(
��, -
users
��- 2
[
��2 3
i
��3 4
]
��4 5
.
��5 6
Nome
��6 :
.
��: ;
ToString
��; C
(
��C D
)
��D E
,
��E F
users
��G L
[
��L M
i
��M N
]
��N O
.
��O P
	Matricula
��P Y
.
��Y Z
ToString
��Z b
(
��b c
)
��c d
)
��d e
)
��e f
;
��f g
for
�� 
(
�� 
var
�� 
j
�� 
=
�� 
$num
�� 
;
�� 
j
��  !
<
��" #
pub
��$ '
.
��' (
Count
��( -
(
��- .
)
��. /
;
��/ 0
j
��1 2
++
��2 4
)
��4 5
{
�� 
var
�� 
cont
�� 
=
�� 
Contador
�� '
(
��' (
pub
��( +
[
��+ ,
j
��, -
]
��- .
.
��. /
Id
��/ 1
)
��1 2
;
��2 3
ranking
�� 
[
�� 
i
�� 
]
�� 
.
�� 
	Pontuacao
�� (
+=
��) +
cont
��, 0
.
��0 1
ComentarioQtd
��1 >
+
��? @
cont
��A E
.
��E F

CurtidaQtd
��F P
;
��P Q
}
�� 
}
�� 
List
�� 
<
�� 
RankingModel
�� 
>
�� 
result
�� %
=
��& '
ranking
��( /
.
��/ 0
OrderByDescending
��0 A
(
��A B
x
��B C
=>
��D F
x
��G H
.
��H I
	Pontuacao
��I R
)
��R S
.
��S T
ToList
��T Z
(
��Z [
)
��[ \
;
��\ ]
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
List
�� 
<
�� 
TagModel
�� 
>
��  
PreferenciaParaTag
�� 0
(
��0 1
)
��1 2
{
�� 	
var
�� 
preferencia
�� 
=
�� 
_preferencia
�� *
.
��* +
BuscarPorIdUser
��+ :
(
��: ;
)
��; <
;
��< =
var
�� 
tag
�� 
=
�� 
_preferencia
�� "
.
��" #%
BuscarTagPorPreferencia
��# :
(
��: ;
preferencia
��; F
)
��F G
;
��G H
return
�� 
tag
�� 
;
�� 
}
�� 	
public
�� 
string
�� 
TratarUpload
�� "
(
��" #!
PublicacaoViewModel
��# 6
pub
��7 :
)
��: ;
{
�� 	
_caminhoImagem
�� 
+=
�� 
$str
�� 2
;
��2 3
string
�� 

nomeImagem
�� 
=
�� 
DateTime
��  (
.
��( )
Now
��) ,
.
��, -
ToString
��- 5
(
��5 6
$str
��6 K
)
��K L
+
��M N
$str
��O R
+
��S T
pub
��U X
.
��X Y
Imagem
��Y _
.
��_ `
FileName
��` h
.
��h i
ToString
��i q
(
��q r
)
��r s
;
��s t
if
�� 
(
�� 
!
�� 
	Directory
�� 
.
�� 
Exists
�� !
(
��! "
_caminhoImagem
��" 0
)
��0 1
)
��1 2
{
�� 
	Directory
�� 
.
�� 
CreateDirectory
�� )
(
��) *
_caminhoImagem
��* 8
)
��8 9
;
��9 :
}
�� 
using
�� 
(
�� 
var
�� 
strem
�� 
=
�� 
System
�� %
.
��% &
IO
��& (
.
��( )
File
��) -
.
��- .
Create
��. 4
(
��4 5
_caminhoImagem
�� 
+
��  

nomeImagem
��! +
)
��+ ,
)
��, -
{
�� 
pub
�� 
.
�� 
Imagem
�� 
.
�� 
CopyToAsync
�� &
(
��& '
strem
��' ,
)
��, -
;
��- .
}
�� 
return
�� 

nomeImagem
�� 
;
�� 
}
�� 	
}
�� 
}�� �#
�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Services\UsuarioService.cs
	namespace

 	
CadernoDigital


 
.

 
Services

 !
{ 
public 

class 
UsuarioService 
:  !
IUsuarioService" 1
{ 
private 
readonly 
Context  
_context! )
;) *
private 
readonly 
ISessao  
_sessao! (
;( )
public 
UsuarioService 
( 
Context %
context& -
,- .
ISessao/ 6
sessao7 =
)= >
{ 	
_context 
= 
context 
; 
_sessao 
= 
sessao 
; 
} 	
public 
List 
< 
PublicacaoViewModel '
>' (

BucarTodos) 3
(3 4
)4 5
{ 	
var 
idUser 
= 
_sessao  
.  !!
BuscarSessaoDoUsuario! 6
(6 7
)7 8
.8 9
Id9 ;
;; <
var 
user 
= 
_context 
.  
Usuario  '
.' (
FirstOrDefault( 6
(6 7
x7 8
=>9 ;
x< =
.= >
Id> @
.@ A
ToStringA I
(I J
)J K
==L N
idUserO U
.U V
ToStringV ^
(^ _
)_ `
)` a
;a b
var 
pub 
= 
_context 
. 

Publicacao )
.) *
Where* /
(/ 0
x0 1
=>2 4
x5 6
.6 7

Id_Usuario7 A
==B D
idUserE K
)K L
.L M
ToListM S
(S T
)T U
;U V
List 
< 
PublicacaoViewModel $
>$ %

publicacao& 0
=1 2
new3 6
List7 ;
<; <
PublicacaoViewModel< O
>O P
(P Q
)Q R
;R S

publicacao 
. 
Add 
( 
new 
PublicacaoViewModel 2
(2 3
)3 4
{4 5
Usuario6 =
=> ?
user@ D
}E F
)F G
;G H
for!! 
(!! 
var!! 
i!! 
=!! 
$num!! 
;!! 
i!! 
<!! 
pub!!  #
.!!# $
Count!!$ )
;!!) *
i!!+ ,
++!!, .
)!!. /
{"" 
var## 
result## 
=## 
_context## %
.##% &
DisciplinaProfessor##& 9
.##9 :
FirstOrDefault##: H
(##H I
x##I J
=>##K M
x##N O
.##O P
Id##P R
==##S U
pub##V Y
[##Y Z
i##Z [
]##[ \
.##\ ]#
Id_Disciplina_Professor##] t
)##t u
;##u v
var%% 
dis%% 
=%% 
_context%% "
.%%" #

Disciplina%%# -
.%%- .
FirstOrDefault%%. <
(%%< =
x%%= >
=>%%? A
x%%B C
.%%C D
Id%%D F
==%%G I
result%%J P
.%%P Q
Id_Disciplina%%Q ^
)%%^ _
;%%_ `
var&& 
pro&& 
=&& 
_context&& "
.&&" #
	Professor&&# ,
.&&, -
FirstOrDefault&&- ;
(&&; <
x&&< =
=>&&> @
x&&A B
.&&B C
Id&&C E
==&&F H
result&&I O
.&&O P
Id_Professor&&P \
)&&\ ]
;&&] ^

publicacao(( 
.(( 
Add(( 
((( 
new(( "
PublicacaoViewModel((# 6
(((6 7
)((7 8
{)) 

Publicacao** 
=**  
pub**! $
[**$ %
i**% &
]**& '
,**' (

Disciplina++ 
=++  
dis++! $
,++$ %
	Professor,, 
=,, 
pro,,  #
}-- 
)-- 
;-- 
}.. 
;.. 
return00 

publicacao00 
;00 
}11 	
}22 
}33 �'
uC:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\Startup.cs
	namespace 	
CadernoDigital
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services   
.   #
AddControllersWithViews   ,
(  , -
)  - .
;  . /
services"" 
."" '
AddEntityFrameworkSqlServer"" 0
(""0 1
)""1 2
.## 
AddDbContext## 
<## 
Context## %
>##% &
(##& '
options##' .
=>##/ 1
options$$ 
.$$ 
UseSqlServer$$ (
($$( )
Configuration$$) 6
.$$6 7
GetConnectionString$$7 J
($$J K
$str$$K T
)$$T U
)$$U V
)$$V W
;$$W X
services&& 
.&& 
AddSingleton&& !
<&&! " 
IHttpContextAccessor&&" 6
,&&6 7
HttpContextAccessor&&8 K
>&&K L
(&&L M
)&&M N
;&&N O
services(( 
.(( 
	AddScoped(( 
<(( 
Criptografia(( +
>((+ ,
(((, -
)((- .
;((. /
services)) 
.)) 
	AddScoped)) 
<)) 
ISessao)) &
,))& '
Sessao))( .
>)). /
())/ 0
)))0 1
;))1 2
services** 
.** 
	AddScoped** 
<** 
ILoginService** ,
,**, -
LoginService**. :
>**: ;
(**; <
)**< =
;**= >
services++ 
.++ 
	AddScoped++ 
<++ 
IPublicacaoService++ 1
,++1 2
PublicacaoService++3 D
>++D E
(++E F
)++F G
;++G H
services,, 
.,, 
	AddScoped,, 
<,, 
IUsuarioService,, .
,,,. /
UsuarioService,,0 >
>,,> ?
(,,? @
),,@ A
;,,A B
services-- 
.-- 
	AddScoped-- 
<-- 
IPreferenciaService-- 2
,--2 3
PreferenciaService--4 F
>--F G
(--G H
)--H I
;--I J
services// 
.// 

AddSession// 
(//  
o//  !
=>//" $
{00 
o11 
.11 
Cookie11 
.11 
HttpOnly11 !
=11" #
true11$ (
;11( )
o22 
.22 
Cookie22 
.22 
IsEssential22 $
=22% &
true22' +
;22+ ,
}33 
)33 
;33 
}55 	
public88 
void88 
	Configure88 
(88 
IApplicationBuilder88 1
app882 5
,885 6
IWebHostEnvironment887 J
env88K N
)88N O
{99 	
if:: 
(:: 
env:: 
.:: 
IsDevelopment:: !
(::! "
)::" #
)::# $
{;; 
app<< 
.<< %
UseDeveloperExceptionPage<< -
(<<- .
)<<. /
;<</ 0
}== 
else>> 
{?? 
app@@ 
.@@ 
UseExceptionHandler@@ '
(@@' (
$str@@( 5
)@@5 6
;@@6 7
appBB 
.BB 
UseHstsBB 
(BB 
)BB 
;BB 
}CC 
appDD 
.DD 
UseHttpsRedirectionDD #
(DD# $
)DD$ %
;DD% &
appEE 
.EE 
UseStaticFilesEE 
(EE 
)EE  
;EE  !
appGG 
.GG 

UseRoutingGG 
(GG 
)GG 
;GG 
appII 
.II 
UseAuthorizationII  
(II  !
)II! "
;II" #
appKK 
.KK 

UseSessionKK 
(KK 
)KK 
;KK 
appMM 
.MM 
UseEndpointsMM 
(MM 
	endpointsMM &
=>MM' )
{NN 
	endpointsOO 
.OO 
MapControllerRouteOO ,
(OO, -
namePP 
:PP 
$strPP #
,PP# $
patternQQ 
:QQ 
$strQQ F
)QQF G
;QQG H
}RR 
)RR 
;RR 
}SS 	
}TT 
}UU �

�C:\Users\evert\Documents\Aula Everton\IFSP\5°Semestre\GIOVANI\LDSD5\CAD\src\CadernoDigital\CadernoDigital\ViewComponents\Menu.cs
	namespace 	
ControleDeContatos
 
. 
ViewComponents +
{ 
public		 

class		 
Menu		 
:		 
ViewComponent		 %
{

 
public 
async 
Task 
<  
IViewComponentResult .
>. /
InvokeAsync0 ;
(; <
)< =
{ 	
string 
sessaoUsuario  
=! "
HttpContext# .
.. /
Session/ 6
.6 7
	GetString7 @
(@ A
$strA V
)V W
;W X
if 
( 
string 
. 
IsNullOrEmpty $
($ %
sessaoUsuario% 2
)2 3
)3 4
return5 ;
null< @
;@ A
UsuarioModel 
usuario  
=! "
JsonConvert# .
.. /
DeserializeObject/ @
<@ A
UsuarioModelA M
>M N
(N O
sessaoUsuarioO \
)\ ]
;] ^
return 
View 
( 
usuario 
)  
;  !
} 	
} 
} 