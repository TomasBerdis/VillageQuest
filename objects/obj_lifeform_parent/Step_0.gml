// DEPTH CHECK
depth = -y;             // ak je objekt_1 vyzsie a ma poziciu y = 9 a objekt_0 je nizsie 
                        // a ma poziciu y = 10,
                        // obrati to znamienka, cize objekt_1 bude mat depth = -9
                        // a objekt_0 bude depth = -10, teda v logike physics 
                        // bude objekt_1 vyzsie ako objekt_0

if(hp<=0)
{
    instance_destroy();
}     

