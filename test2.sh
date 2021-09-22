#!/bin/env bash
# Feltételes szerkezetek
homedir=$(ls ~/scripts/origin/)
backupdir=$(ls ~/scripts/backup/)
# String műveletek
[ "$homedir" = "$backupdir" ]
echo $? # előző feltétel eredmény: 0 - igaz, 1 - nem igaz
[ -z "$homedir" ] # üres string?
[ -n "$homedir" ] # nem üres string?

# Számok összehasonlítása
[ 100 -eq 100 ] # egyenlő =
#echo $?
# -ne : nem egyenlő !=
# -lt : kisebb mint <
# -gt : nagyobb mint >
# -le : kisebb egyenlő <=
# -ge : nagyobb egyenlő >=

# IF szerkezet
# if [  ]; then
#
# else
#
# fi

homedir2=$(ls ~/scripts/origin/ | wc -l) # wc: word count
backupdir2=$(ls ~/scripts/backup/ | wc -l)
if [ $backupdir2 -ne $homedir2 ]; then
    echo "Bakcup and home content not matching, backup failed!"
else
    echo "Backup and home content matching, backup successful!"
fi

