.class public Lcom/mob/commons/cc/z$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/cc/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Number;

.field private b:Ljava/lang/Number;

.field private c:Ljava/lang/Number;

.field private d:Ljava/lang/Number;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Number;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    const/4 v6, 0x2

    aput-object v1, v3, v6

    new-array v7, v2, [I

    .line 2
    fill-array-data v7, :array_0

    const/4 v8, 0x0

    :goto_0
    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    if-ge v8, v2, :cond_8

    .line 3
    aget-object v14, v3, v8

    if-eqz v14, :cond_7

    .line 4
    instance-of v15, v14, Ljava/lang/Byte;

    if-eqz v15, :cond_0

    .line 5
    aput v5, v7, v8

    goto :goto_1

    .line 6
    :cond_0
    instance-of v15, v14, Ljava/lang/Short;

    if-eqz v15, :cond_1

    .line 7
    aput v6, v7, v8

    goto :goto_1

    .line 8
    :cond_1
    instance-of v15, v14, Ljava/lang/Integer;

    if-eqz v15, :cond_2

    .line 9
    aput v2, v7, v8

    goto :goto_1

    .line 10
    :cond_2
    instance-of v15, v14, Ljava/lang/Long;

    if-eqz v15, :cond_3

    .line 11
    aput v13, v7, v8

    goto :goto_1

    .line 12
    :cond_3
    instance-of v13, v14, Ljava/lang/Float;

    if-eqz v13, :cond_4

    .line 13
    aput v12, v7, v8

    goto :goto_1

    .line 14
    :cond_4
    instance-of v12, v14, Ljava/lang/Double;

    if-eqz v12, :cond_5

    .line 15
    aput v11, v7, v8

    goto :goto_1

    .line 16
    :cond_5
    instance-of v11, v14, Ljava/math/BigInteger;

    if-eqz v11, :cond_6

    .line 17
    aput v10, v7, v8

    goto :goto_1

    .line 18
    :cond_6
    instance-of v10, v14, Ljava/math/BigDecimal;

    if-eqz v10, :cond_7

    .line 19
    aput v9, v7, v8

    :cond_7
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v3, v2, :cond_a

    .line 20
    aget v14, v7, v3

    if-ge v8, v14, :cond_9

    .line 21
    aget v8, v7, v3

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    const/16 v3, 0x9

    if-nez p1, :cond_b

    new-array v7, v3, [Ljava/lang/Number;

    const/high16 v14, -0x80000000

    .line 22
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v7, v4

    const/16 v15, -0x80

    .line 23
    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v7, v5

    const/16 v15, -0x8000

    invoke-static {v15}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    aput-object v15, v7, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v7, v2

    const-wide/high16 v14, -0x8000000000000000L

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v7, v13

    const/16 v16, 0x1

    .line 24
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v7, v12

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v7, v11

    new-instance v11, Ljava/math/BigInteger;

    .line 25
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v11, v7, v10

    new-instance v11, Ljava/math/BigDecimal;

    invoke-direct {v11, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    aput-object v11, v7, v9

    .line 26
    aget-object v7, v7, v8

    goto/16 :goto_3

    :cond_b
    packed-switch v8, :pswitch_data_0

    move-object/from16 v7, p1

    goto/16 :goto_3

    .line 27
    :pswitch_0
    new-instance v7, Ljava/math/BigDecimal;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 28
    :pswitch_1
    new-instance v7, Ljava/math/BigInteger;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 29
    :pswitch_2
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    goto :goto_3

    .line 30
    :pswitch_3
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->floatValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_3

    .line 31
    :pswitch_4
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_3

    .line 32
    :pswitch_5
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_3

    .line 33
    :pswitch_6
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->shortValue()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    goto :goto_3

    .line 34
    :pswitch_7
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->byteValue()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    :goto_3
    if-nez p2, :cond_c

    new-array v3, v3, [Ljava/lang/Number;

    const v11, 0x7fffffff

    .line 35
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v4

    const/16 v12, 0x7f

    .line 36
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v3, v5

    const/16 v12, 0x7fff

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    aput-object v12, v3, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    const-wide v11, 0x7fffffffffffffffL

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v3, v6

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 37
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v3, v6

    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v3, v6

    new-instance v2, Ljava/math/BigInteger;

    .line 38
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v2, v3, v10

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v13, v14}, Ljava/math/BigDecimal;-><init>(D)V

    aput-object v2, v3, v9

    .line 39
    aget-object v2, v3, v8

    goto/16 :goto_4

    :cond_c
    packed-switch v8, :pswitch_data_1

    move-object/from16 v2, p2

    goto/16 :goto_4

    .line 40
    :pswitch_8
    new-instance v2, Ljava/math/BigDecimal;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 41
    :pswitch_9
    new-instance v2, Ljava/math/BigInteger;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 42
    :pswitch_a
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    goto :goto_4

    .line 43
    :pswitch_b
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_4

    .line 44
    :pswitch_c
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_4

    .line 45
    :pswitch_d
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4

    .line 46
    :pswitch_e
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->shortValue()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto :goto_4

    .line 47
    :pswitch_f
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->byteValue()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 48
    :goto_4
    iput-object v7, v0, Lcom/mob/commons/cc/z$a;->a:Ljava/lang/Number;

    .line 49
    iput-object v2, v0, Lcom/mob/commons/cc/z$a;->b:Ljava/lang/Number;

    .line 50
    iput-object v1, v0, Lcom/mob/commons/cc/z$a;->c:Ljava/lang/Number;

    .line 51
    check-cast v7, Ljava/lang/Comparable;

    invoke-interface {v7, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_d

    const/4 v4, 0x1

    :cond_d
    iput-boolean v4, v0, Lcom/mob/commons/cc/z$a;->e:Z

    .line 52
    iget-object v1, v0, Lcom/mob/commons/cc/z$a;->c:Ljava/lang/Number;

    if-nez v1, :cond_f

    if-eqz v4, :cond_e

    const/4 v5, -0x1

    .line 53
    :cond_e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/commons/cc/z$a;->c:Ljava/lang/Number;

    :cond_f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic a(Lcom/mob/commons/cc/z$a;)Ljava/lang/Number;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/commons/cc/z$a;->a:Ljava/lang/Number;

    return-object p0
.end method

.method static synthetic b(Lcom/mob/commons/cc/z$a;)Ljava/lang/Number;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/commons/cc/z$a;->b:Ljava/lang/Number;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/mob/commons/cc/z$a;->d:Ljava/lang/Number;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mob/commons/cc/z$a;->a:Ljava/lang/Number;

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/mob/commons/cc/z$a;->e:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Ljava/lang/Comparable;

    iget-object v1, p0, Lcom/mob/commons/cc/z$a;->b:Ljava/lang/Number;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 5
    :cond_2
    check-cast v0, Ljava/lang/Comparable;

    iget-object v1, p0, Lcom/mob/commons/cc/z$a;->b:Ljava/lang/Number;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public b()Ljava/lang/Number;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/mob/commons/cc/z$a;->d:Ljava/lang/Number;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mob/commons/cc/z$a;->a:Ljava/lang/Number;

    iput-object v0, p0, Lcom/mob/commons/cc/z$a;->d:Ljava/lang/Number;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/cc/z$a;->d:Ljava/lang/Number;

    .line 5
    iget-object v1, p0, Lcom/mob/commons/cc/z$a;->c:Ljava/lang/Number;

    instance-of v2, v1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_1

    .line 6
    move-object v2, v0

    check-cast v2, Ljava/math/BigDecimal;

    check-cast v1, Ljava/math/BigDecimal;

    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/z$a;->d:Ljava/lang/Number;

    goto/16 :goto_0

    .line 7
    :cond_1
    instance-of v2, v1, Ljava/math/BigInteger;

    if-eqz v2, :cond_2

    .line 8
    move-object v2, v0

    check-cast v2, Ljava/math/BigInteger;

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/z$a;->d:Ljava/lang/Number;

    goto/16 :goto_0

    .line 9
    :cond_2
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    iget-object v3, p0, Lcom/mob/commons/cc/z$a;->c:Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/z$a;->d:Ljava/lang/Number;

    goto :goto_0

    .line 11
    :cond_3
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/mob/commons/cc/z$a;->c:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/z$a;->d:Ljava/lang/Number;

    goto :goto_0

    .line 13
    :cond_4
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_5

    .line 14
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/mob/commons/cc/z$a;->c:Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/z$a;->d:Ljava/lang/Number;

    goto :goto_0

    .line 15
    :cond_5
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 16
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/mob/commons/cc/z$a;->c:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/z$a;->d:Ljava/lang/Number;

    goto :goto_0

    .line 17
    :cond_6
    instance-of v1, v1, Ljava/lang/Short;

    if-eqz v1, :cond_7

    .line 18
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    iget-object v2, p0, Lcom/mob/commons/cc/z$a;->c:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->shortValue()S

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/z$a;->d:Ljava/lang/Number;

    goto :goto_0

    .line 19
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    iget-object v2, p0, Lcom/mob/commons/cc/z$a;->c:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/z$a;->d:Ljava/lang/Number;

    :goto_0
    return-object v0
.end method
