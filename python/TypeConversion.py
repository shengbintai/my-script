def hex2fix(v,s=True,w=24,f=15):
    #v 输入16进制字符串 example 'f1'
    #s 是否是有符号输出 example  1
    #w 输入值位宽      example  8
    #f 小数位宽        example  4
    #return           -0.9375
    din = int(v,16)
    max_num= 2**w


    if( s and din >= max_num/2 ):
        x=din^(max_num-1)
        v_bin = '{0:0{1}b}'.format(x+1,w)
        fraction = int(v_bin[w-f:],2)/float(2**f)
        intdata  = int(v_bin[:w-f],2)
        x=-(fraction+intdata)
    else:
        v_bin = '{0:0{1}b}'.format(din,w)
        fraction = int(v_bin[w-f:],2)/float(2**f)
        intdata  = int(v_bin[:w-f],2)
        x=fraction+intdata
    return x

