
env = 'dev'
if [$1 == 'Master']
then
	$env = 'Production'
el if [$1 == 'QA']
then
	$env = 'QA'
else
	$env = 'dev'
fi

echo env