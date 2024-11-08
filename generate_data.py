import random
a='%03d_data%d'
s='var1, var2, var3, var4, var5\n'

for i in range(1,100):
    for j in range(1,6):
      t = ''
      if ( (random.randint(1,10) == 5 ) and (j == 4) ):
          t = '_XYZ'
      s += a%(i,j) +t+ ','
    s+= '\n'
with open('output_x.txt', 'w') as f:
  f.write(s) 