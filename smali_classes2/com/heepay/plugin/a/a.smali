.class public abstract Lcom/heepay/plugin/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field protected static final d:Ljava/lang/String;

.field protected static final e:Ljava/lang/String;

.field protected static final f:Ljava/lang/String;

.field protected static final g:Ljava/lang/String;

.field protected static final h:Ljava/lang/String;


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/security/PublicKey;

.field protected l:Ljava/lang/String;

.field protected m:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "<?x*m*l ve*r*si*on=\"1.0\" enc*o*d*i*n*g=\"u*tf*-*8\"?>"

    const-string v1, "\\*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heepay/plugin/a/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<so*a*p1*2:En*vel*ope "

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "xm*ln*s:xs*i=\"h*tt*p:/*/w*w*w.w*3.o*rg/20*01/X*MLS*che*ma-i*nst*ance\" "

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x*ml*ns:xs*d=\"ht*tp:*/*/w*w*w.w*3.o*r*g/2*001/XM*LSc*hema\" "

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "xm*ln*s:s*oa*p1*2=\"h*tt*p*:*/*/w*ww.w*3.o*rg/2*003/05/so*ap-envelope\">"

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heepay/plugin/a/a;->e:Ljava/lang/String;

    const-string v0, "</so*ap12:En*velope>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heepay/plugin/a/a;->f:Ljava/lang/String;

    const-string v0, "<soa*p12:Bo*dy>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heepay/plugin/a/a;->g:Ljava/lang/String;

    const-string v0, "</soap*12:B*ody>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heepay/plugin/a/a;->h:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/heepay/plugin/a/a;->b:Ljava/lang/String;

    const-string v1, "/"

    iput-object v1, p0, Lcom/heepay/plugin/a/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/heepay/plugin/a/a;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heepay/plugin/a/a;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/heepay/plugin/a/a;->k:Ljava/security/PublicKey;

    iput-object v0, p0, Lcom/heepay/plugin/a/a;->l:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return p2
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/io/InputStreamReader;Lcom/heepay/plugin/domain/g;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p2

    :goto_0
    const/4 v2, 0x1

    if-eq p2, v2, :cond_f

    const/4 v3, 0x2

    if-ne p2, v3, :cond_c

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v3, "HasError"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p2

    const-string v3, "false"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    xor-int/2addr p2, v2

    iput-boolean p2, p3, Lcom/heepay/plugin/domain/g;->b:Z

    goto/16 :goto_1

    :cond_0
    const-string v2, "Message"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/heepay/plugin/domain/g;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    const-string v2, "ErrorCode"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/heepay/plugin/domain/g;->d:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const-string v2, "ReturnValue"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/heepay/plugin/domain/g;->e:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v2, "ReturnStatus"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p3, Lcom/heepay/plugin/domain/g;->n:I

    goto/16 :goto_1

    :cond_4
    const-string v2, "ExtValue1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/heepay/plugin/domain/g;->f:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const-string v2, "ExtValue2"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/heepay/plugin/domain/g;->g:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v2, "ExtValue3"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/heepay/plugin/domain/g;->h:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v2, "ExtValue4"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/heepay/plugin/domain/g;->i:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v2, "ExtValue5"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/heepay/plugin/domain/g;->j:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const-string v2, "ExtValue6"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/heepay/plugin/domain/g;->k:Ljava/lang/String;

    goto :goto_1

    :cond_a
    const-string v2, "ExtValue7"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/heepay/plugin/domain/g;->l:Ljava/lang/String;

    goto :goto_1

    :cond_b
    const-string v2, "ExtValue8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/heepay/plugin/domain/g;->m:Ljava/lang/String;

    goto :goto_1

    :cond_c
    const/4 v2, 0x3

    if-ne p2, v2, :cond_d

    goto :goto_1

    :cond_d
    const/16 v2, 0xa

    :cond_e
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    if-lez p2, :cond_10

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " recv message: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RunWebService"

    invoke-static {p2, p1}, Lcom/heepay/plugin/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heepay/plugin/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/heepay/plugin/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".asmx"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method protected a(Ljava/security/PublicKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, "z"

    const-string v1, ""

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "40*896*789*8D*DC*4*5*9*5AC*5*BC*33**2D*4E*C*A***0*A0"

    const-string v4, "\\*"

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x20

    if-le v3, v5, :cond_0

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/heepay/plugin/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/heepay/plugin/a/d;->a(Ljava/security/PublicKey;Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/heepay/plugin/a/d;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/heepay/plugin/a/d;->a([B[B[B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/heepay/plugin/a/d;->a([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "WebService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RsaEncryptParam("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")=Z"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/heepay/plugin/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Z"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "EncryptParam"

    invoke-static {p1, p2}, Lcom/heepay/plugin/c/b;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v1
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/heepay/plugin/a/a;->m:I

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/heepay/plugin/domain/g;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/heepay/plugin/domain/g;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/heepay/plugin/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/heepay/plugin/domain/g;

    move-result-object p1

    return-object p1
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "D*C*5*11*D*B99*9BC*48*4F*89*BC*565A*A0E*040*98"

    const-string v0, "\\*"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/heepay/plugin/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/heepay/plugin/domain/g;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    const-string v0, " begin to get input stream from "

    const-string v1, "\\*"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "param is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", timestamp is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RunWebService"

    invoke-static {v3, v2}, Lcom/heepay/plugin/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    add-int/2addr v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {p0, v2, p3, p2, p4}, Lcom/heepay/plugin/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1}, Lcom/heepay/plugin/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v2, ""

    if-eqz p4, :cond_8

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_5

    :cond_1
    new-instance v5, Lcom/heepay/plugin/domain/g;

    invoke-direct {v5}, Lcom/heepay/plugin/domain/g;-><init>()V

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/heepay/plugin/domain/g;->b:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sent message to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/heepay/plugin/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v7, "UTF-8"

    invoke-virtual {p3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    const-string v7, "h*t*t*p*s*:*"

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    :goto_1
    invoke-virtual {v6, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v6, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v7, "POST"

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v7, "Content-Type"

    const-string v8, "a*p*p*l*i*c*a*tio*n/so*ap*+xm*l; cha*rse*t=*ut*f-*8"

    invoke-virtual {v8, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/heepay/plugin/a/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AspNetSessionId != null, AspNetSessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/heepay/plugin/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/heepay/plugin/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Cookie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ASP.NET_SessionId="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/heepay/plugin/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/16 v1, 0x4e20

    invoke-virtual {v6, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x4650

    invoke-virtual {v6, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "Content-Length"

    array-length v2, p3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    const-string p3, "----->"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/heepay/plugin/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/heepay/plugin/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const-string p4, "Set-Cookie"

    invoke-virtual {v6, p4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const-string v1, "------ResponseCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "--"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heepay/plugin/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_5

    const-string v0, "ASP.NET_SessionId"

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    const/16 v1, 0x3d

    add-int/lit8 v0, v0, 0x11

    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-lez v1, :cond_5

    const/16 v2, 0x3b

    invoke-virtual {p4, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-le v0, v1, :cond_4

    add-int/2addr v1, v4

    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    :goto_2
    sput-object p4, Lcom/heepay/plugin/a/a;->a:Ljava/lang/String;

    goto :goto_3

    :cond_4
    add-int/2addr v1, v4

    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    :cond_5
    :goto_3
    invoke-direct {p0, p1, p3, v5}, Lcom/heepay/plugin/a/a;->a(Ljava/lang/String;Ljava/io/InputStreamReader;Lcom/heepay/plugin/domain/g;)V

    invoke-virtual {p0, p1, p2, v5}, Lcom/heepay/plugin/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/heepay/plugin/domain/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    instance-of p2, p1, Ljava/net/SocketTimeoutException;

    if-nez p2, :cond_6

    instance-of p2, p1, Ljava/net/UnknownHostException;

    if-nez p2, :cond_6

    instance-of p2, p1, Ljava/net/ConnectException;

    if-eqz p2, :cond_7

    :cond_6
    iput-object p1, v5, Lcom/heepay/plugin/domain/g;->a:Ljava/lang/Exception;

    :cond_7
    iput-boolean v4, v5, Lcom/heepay/plugin/domain/g;->b:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "\u8fde\u63a5\u670d\u52a1\u5668\u51fa\u9519\uff0c\u539f\u56e0\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v5, Lcom/heepay/plugin/domain/g;->c:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/heepay/plugin/c/b;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_4
    return-object v5

    :cond_8
    :goto_5
    new-instance p1, Lcom/heepay/plugin/domain/g;

    const-string/jumbo p2, "\u6ca1\u6709\u5b9e\u73b0\u7684\u65b9\u6cd5"

    invoke-direct {p1, v4, v2, p2}, Lcom/heepay/plugin/domain/g;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
