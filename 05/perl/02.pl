srand;for(0..5){$r[$_]=chr 65+rand 8}sub d{print$/x6;for(0..335)
{print$_<27&$_>13?'-':$_%14>12?"\n":$_<6?$_[0]?$r[$_]:
'O': $_%14==6?'|':(split//,$b[int$_/14])[$_%14]||$"}print"$/Enter 
m/[A-Ha-h]{6}/\n"}sub c{return if/[^A-H]/||length()-6;@c=split//,
${$f=\($b[24-++$w]=uc.$")};$w>21&&return 1;for(-6..35){($p[$h]=1)
&($q[$h]=1)&($$f.="*")&$n++if$_<0&&$c[$h=$_+6]eq$r[$h];
!$p[$b]&&!$q[$d]&&($p[$b]=1)&($q[$d]=1)&($$f.="+")
if$c[$d=$_%6]eq$r[$b=$_/6]&&$_>-1}(d$])&die"Done$/"if$n>5;
$n=@p=@q=()}while(!c){d|chop($_=uc<>)}d$/;print"$/Looser!$/" 
