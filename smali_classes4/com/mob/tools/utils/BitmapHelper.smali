.class public Lcom/mob/tools/utils/BitmapHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xd33

    const/4 v2, 0x0

    .line 1
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 2
    aget v0, v0, v2

    const/16 v1, 0x800

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    sput v0, Lcom/mob/tools/utils/BitmapHelper;->a:I

    .line 4
    sput v0, Lcom/mob/tools/utils/BitmapHelper;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 36

    move/from16 v0, p1

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move-object/from16 v2, p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int v13, v11, v12

    .line 5
    new-array v14, v13, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, v14

    move v6, v11

    move v9, v11

    move v10, v12

    .line 6
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v3, v11, -0x1

    add-int/lit8 v4, v12, -0x1

    add-int v5, v0, v0

    add-int/2addr v5, v1

    .line 7
    new-array v6, v13, [I

    .line 8
    new-array v7, v13, [I

    .line 9
    new-array v8, v13, [I

    .line 10
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v9, v9, [I

    add-int/lit8 v10, v5, 0x1

    shr-int/2addr v10, v1

    mul-int v10, v10, v10

    mul-int/lit16 v13, v10, 0x100

    .line 11
    new-array v15, v13, [I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v13, :cond_2

    .line 12
    div-int v17, v1, v10

    aput v17, v15, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    const/4 v10, 0x2

    new-array v13, v10, [I

    const/16 v16, 0x1

    aput v1, v13, v16

    const/4 v1, 0x0

    aput v5, v13, v1

    .line 13
    const-class v1, I

    invoke-static {v1, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    add-int/lit8 v13, v0, 0x1

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_2
    if-ge v10, v12, :cond_7

    move-object/from16 v19, v2

    neg-int v2, v0

    move/from16 v28, v12

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move v12, v2

    const/4 v2, 0x0

    :goto_3
    const v29, 0xff00

    const/high16 v30, 0xff0000

    if-gt v12, v0, :cond_4

    move/from16 v31, v4

    move-object/from16 v32, v9

    const/4 v4, 0x0

    .line 14
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int v9, v17, v9

    aget v9, v14, v9

    add-int v33, v12, v0

    .line 15
    aget-object v33, v1, v33

    and-int v30, v9, v30

    shr-int/lit8 v30, v30, 0x10

    .line 16
    aput v30, v33, v4

    and-int v29, v9, v29

    shr-int/lit8 v29, v29, 0x8

    const/16 v16, 0x1

    .line 17
    aput v29, v33, v16

    and-int/lit16 v9, v9, 0xff

    const/16 v29, 0x2

    .line 18
    aput v9, v33, v29

    .line 19
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int v9, v13, v9

    .line 20
    aget v30, v33, v4

    mul-int v30, v30, v9

    add-int v2, v2, v30

    .line 21
    aget v30, v33, v16

    mul-int v30, v30, v9

    add-int v20, v20, v30

    .line 22
    aget v30, v33, v29

    mul-int v30, v30, v9

    add-int v21, v21, v30

    if-lez v12, :cond_3

    .line 23
    aget v9, v33, v4

    add-int v25, v25, v9

    .line 24
    aget v9, v33, v16

    add-int v26, v26, v9

    .line 25
    aget v9, v33, v29

    add-int v27, v27, v9

    goto :goto_4

    .line 26
    :cond_3
    aget v9, v33, v4

    add-int v22, v22, v9

    .line 27
    aget v4, v33, v16

    add-int v23, v23, v4

    .line 28
    aget v4, v33, v29

    add-int v24, v24, v4

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v31

    move-object/from16 v9, v32

    goto :goto_3

    :cond_4
    move/from16 v31, v4

    move-object/from16 v32, v9

    move v9, v0

    move v4, v2

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v11, :cond_6

    .line 29
    aget v12, v15, v4

    aput v12, v6, v17

    .line 30
    aget v12, v15, v20

    aput v12, v7, v17

    .line 31
    aget v12, v15, v21

    aput v12, v8, v17

    sub-int v4, v4, v22

    sub-int v20, v20, v23

    sub-int v21, v21, v24

    sub-int v12, v9, v0

    add-int/2addr v12, v5

    .line 32
    rem-int/2addr v12, v5

    aget-object v12, v1, v12

    const/16 v33, 0x0

    .line 33
    aget v34, v12, v33

    sub-int v22, v22, v34

    const/16 v16, 0x1

    .line 34
    aget v33, v12, v16

    sub-int v23, v23, v33

    const/16 v33, 0x2

    .line 35
    aget v34, v12, v33

    sub-int v24, v24, v34

    if-nez v10, :cond_5

    add-int v33, v2, v0

    move-object/from16 v34, v15

    add-int/lit8 v15, v33, 0x1

    .line 36
    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    aput v15, v32, v2

    goto :goto_6

    :cond_5
    move-object/from16 v34, v15

    .line 37
    :goto_6
    aget v15, v32, v2

    add-int v15, v18, v15

    aget v15, v14, v15

    and-int v33, v15, v30

    shr-int/lit8 v33, v33, 0x10

    const/16 v35, 0x0

    .line 38
    aput v33, v12, v35

    and-int v33, v15, v29

    shr-int/lit8 v33, v33, 0x8

    const/16 v16, 0x1

    .line 39
    aput v33, v12, v16

    and-int/lit16 v15, v15, 0xff

    const/16 v33, 0x2

    .line 40
    aput v15, v12, v33

    .line 41
    aget v15, v12, v35

    add-int v25, v25, v15

    .line 42
    aget v15, v12, v16

    add-int v26, v26, v15

    .line 43
    aget v12, v12, v33

    add-int v27, v27, v12

    add-int v4, v4, v25

    add-int v20, v20, v26

    add-int v21, v21, v27

    add-int/lit8 v9, v9, 0x1

    .line 44
    rem-int/2addr v9, v5

    .line 45
    rem-int v12, v9, v5

    aget-object v12, v1, v12

    const/4 v15, 0x0

    .line 46
    aget v33, v12, v15

    add-int v22, v22, v33

    const/16 v16, 0x1

    .line 47
    aget v33, v12, v16

    add-int v23, v23, v33

    const/16 v33, 0x2

    .line 48
    aget v35, v12, v33

    add-int v24, v24, v35

    .line 49
    aget v35, v12, v15

    sub-int v25, v25, v35

    .line 50
    aget v15, v12, v16

    sub-int v26, v26, v15

    .line 51
    aget v12, v12, v33

    sub-int v27, v27, v12

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v15, v34

    goto/16 :goto_5

    :cond_6
    move-object/from16 v34, v15

    add-int v18, v18, v11

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v19

    move/from16 v12, v28

    move/from16 v4, v31

    move-object/from16 v9, v32

    goto/16 :goto_2

    :cond_7
    move-object/from16 v19, v2

    move/from16 v31, v4

    move-object/from16 v32, v9

    move/from16 v28, v12

    move-object/from16 v34, v15

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v11, :cond_d

    neg-int v3, v0

    mul-int v4, v3, v11

    move/from16 v21, v5

    move-object/from16 v22, v14

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move v5, v3

    move v14, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    if-gt v5, v0, :cond_a

    move/from16 v23, v11

    const/4 v11, 0x0

    .line 52
    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v24

    add-int v24, v24, v2

    add-int v25, v5, v0

    .line 53
    aget-object v25, v1, v25

    .line 54
    aget v26, v6, v24

    aput v26, v25, v11

    .line 55
    aget v11, v7, v24

    const/16 v16, 0x1

    aput v11, v25, v16

    .line 56
    aget v11, v8, v24

    const/16 v26, 0x2

    aput v11, v25, v26

    .line 57
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v11

    sub-int v11, v13, v11

    .line 58
    aget v26, v6, v24

    mul-int v26, v26, v11

    add-int v3, v3, v26

    .line 59
    aget v26, v7, v24

    mul-int v26, v26, v11

    add-int v4, v4, v26

    .line 60
    aget v24, v8, v24

    mul-int v24, v24, v11

    add-int v9, v9, v24

    if-lez v5, :cond_8

    const/4 v11, 0x0

    .line 61
    aget v24, v25, v11

    add-int v17, v17, v24

    const/16 v16, 0x1

    .line 62
    aget v24, v25, v16

    add-int v18, v18, v24

    const/16 v24, 0x2

    .line 63
    aget v25, v25, v24

    add-int v20, v20, v25

    goto :goto_9

    :cond_8
    const/4 v11, 0x0

    const/16 v16, 0x1

    const/16 v24, 0x2

    .line 64
    aget v26, v25, v11

    add-int v10, v10, v26

    .line 65
    aget v11, v25, v16

    add-int/2addr v12, v11

    .line 66
    aget v11, v25, v24

    add-int/2addr v15, v11

    :goto_9
    move/from16 v11, v31

    if-ge v5, v11, :cond_9

    add-int v14, v14, v23

    :cond_9
    add-int/lit8 v5, v5, 0x1

    move/from16 v31, v11

    move/from16 v11, v23

    goto :goto_8

    :cond_a
    move/from16 v23, v11

    move/from16 v11, v31

    move/from16 v25, v0

    move/from16 v24, v2

    move v5, v4

    move/from16 v14, v28

    move v4, v3

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v14, :cond_c

    const/high16 v26, -0x1000000

    .line 67
    aget v27, v22, v24

    and-int v26, v27, v26

    aget v27, v34, v4

    shl-int/lit8 v27, v27, 0x10

    or-int v26, v26, v27

    aget v27, v34, v5

    shl-int/lit8 v27, v27, 0x8

    or-int v26, v26, v27

    aget v27, v34, v9

    or-int v26, v26, v27

    aput v26, v22, v24

    sub-int/2addr v4, v10

    sub-int/2addr v5, v12

    sub-int/2addr v9, v15

    sub-int v26, v25, v0

    add-int v26, v26, v21

    .line 68
    rem-int v26, v26, v21

    aget-object v26, v1, v26

    const/16 v27, 0x0

    .line 69
    aget v28, v26, v27

    sub-int v10, v10, v28

    const/16 v16, 0x1

    .line 70
    aget v27, v26, v16

    sub-int v12, v12, v27

    const/16 v27, 0x2

    .line 71
    aget v28, v26, v27

    sub-int v15, v15, v28

    if-nez v2, :cond_b

    add-int v0, v3, v13

    .line 72
    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v0, v0, v23

    aput v0, v32, v3

    .line 73
    :cond_b
    aget v0, v32, v3

    add-int/2addr v0, v2

    .line 74
    aget v27, v6, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    .line 75
    aget v27, v7, v0

    const/16 v16, 0x1

    aput v27, v26, v16

    .line 76
    aget v0, v8, v0

    const/16 v27, 0x2

    aput v0, v26, v27

    .line 77
    aget v0, v26, v28

    add-int v17, v17, v0

    .line 78
    aget v0, v26, v16

    add-int v18, v18, v0

    .line 79
    aget v0, v26, v27

    add-int v20, v20, v0

    add-int v4, v4, v17

    add-int v5, v5, v18

    add-int v9, v9, v20

    add-int/lit8 v25, v25, 0x1

    .line 80
    rem-int v25, v25, v21

    .line 81
    aget-object v0, v1, v25

    const/16 v26, 0x0

    .line 82
    aget v27, v0, v26

    add-int v10, v10, v27

    const/16 v16, 0x1

    .line 83
    aget v27, v0, v16

    add-int v12, v12, v27

    const/16 v27, 0x2

    .line 84
    aget v28, v0, v27

    add-int v15, v15, v28

    .line 85
    aget v28, v0, v26

    sub-int v17, v17, v28

    .line 86
    aget v28, v0, v16

    sub-int v18, v18, v28

    .line 87
    aget v0, v0, v27

    sub-int v20, v20, v0

    add-int v24, v24, v23

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p1

    goto/16 :goto_a

    :cond_c
    const/16 v16, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x2

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p1

    move/from16 v31, v11

    move/from16 v28, v14

    move/from16 v5, v21

    move-object/from16 v14, v22

    move/from16 v11, v23

    goto/16 :goto_7

    :cond_d
    move/from16 v23, v11

    move-object/from16 v22, v14

    move/from16 v14, v28

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, v19

    move-object/from16 v4, v22

    move/from16 v6, v23

    move/from16 v9, v23

    move v10, v14

    .line 88
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v19
.end method

.method static synthetic a(Lcom/mob/tools/network/HttpConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/mob/tools/utils/BitmapHelper;->b(Lcom/mob/tools/network/HttpConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 89
    fill-array-data v1, :array_0

    new-array v2, v0, [B

    .line 90
    fill-array-data v2, :array_1

    .line 91
    invoke-static {p0, v1}, Lcom/mob/tools/utils/BitmapHelper;->a([B[B)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p0, v2}, Lcom/mob/tools/utils/BitmapHelper;->a([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-array v0, v0, [B

    .line 92
    fill-array-data v0, :array_2

    .line 93
    invoke-static {p0, v0}, Lcom/mob/tools/utils/BitmapHelper;->a([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "png"

    return-object p0

    :cond_1
    const-string v0, "GIF"

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 95
    invoke-static {p0, v0}, Lcom/mob/tools/utils/BitmapHelper;->a([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "gif"

    return-object p0

    :cond_2
    const-string v0, "BM"

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 97
    invoke-static {p0, v0}, Lcom/mob/tools/utils/BitmapHelper;->a([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "bmp"

    return-object p0

    :cond_3
    const/4 v0, 0x3

    new-array v1, v0, [B

    .line 98
    fill-array-data v1, :array_3

    new-array v0, v0, [B

    .line 99
    fill-array-data v0, :array_4

    .line 100
    invoke-static {p0, v1}, Lcom/mob/tools/utils/BitmapHelper;->a([B[B)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p0, v0}, Lcom/mob/tools/utils/BitmapHelper;->a([B[B)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const-string p0, ""

    return-object p0

    :cond_5
    :goto_0
    const-string p0, "tif"

    return-object p0

    :cond_6
    :goto_1
    const-string p0, "jpg"

    return-object p0

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
        -0x20t
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
        -0x1ft
    .end array-data

    :array_2
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
    .end array-data

    :array_3
    .array-data 1
        0x49t
        0x49t
        0x2at
    .end array-data

    :array_4
    .array-data 1
        0x4dt
        0x4dt
        0x2at
    .end array-data
.end method

.method private static a(Landroid/graphics/Bitmap;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 104
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static a([B[B)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 101
    :cond_1
    array-length v2, p0

    array-length v3, p1

    if-ge v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    .line 102
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 103
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method private static b(Lcom/mob/tools/network/HttpConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/mob/tools/network/HttpConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    const-string v3, "Content-Disposition"

    .line 2
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ";"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 6
    array-length v4, v3

    move-object v6, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v7, v3, v5

    .line 7
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "filename"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "="

    .line 8
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 9
    array-length v8, v7

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    .line 10
    aget-object v6, v7, v2

    .line 11
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 12
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v0

    :cond_2
    if-nez v6, :cond_7

    .line 13
    invoke-static {p1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz p0, :cond_7

    const-string v3, "Content-Type"

    .line 14
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_7

    .line 15
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 16
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_3

    const-string p0, ""

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string v1, "image/"

    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p1, 0x6

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "jpeg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "jpg"

    :cond_4
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_5
    const/16 p0, 0x2f

    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-lez p0, :cond_6

    add-int/2addr p0, v2

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-eqz v0, :cond_7

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_7

    const/16 p0, 0x2e

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-lez p0, :cond_7

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, p0

    const/16 v1, 0xa

    if-ge p1, v1, :cond_7

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_7
    :goto_2
    return-object v6
.end method

.method public static blur(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float v0, v0

    div-float/2addr v0, p2

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    div-float/2addr v1, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p2

    .line 5
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 6
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x2

    .line 7
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setFlags(I)V

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, p0, v2, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p0, 0x1

    .line 9
    invoke-static {v0, p1, p0}, Lcom/mob/tools/utils/BitmapHelper;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static captureView(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method public static compressByQuality(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/mob/tools/utils/BitmapHelper;->compressByQuality(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static compressByQuality(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/mob/tools/utils/BitmapHelper;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 p0, 0x0

    .line 8
    array-length p2, p1

    invoke-static {p1, p0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static compressByQuality(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-static {p0, p1, p2, v0}, Lcom/mob/tools/utils/BitmapHelper;->compressByQuality(Landroid/graphics/Bitmap;JZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static compressByQuality(Landroid/graphics/Bitmap;JZ)Landroid/graphics/Bitmap;
    .locals 8

    .line 10
    invoke-static {p0}, Lcom/mob/tools/utils/BitmapHelper;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    goto/16 :goto_3

    .line 11
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 12
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v3, v1

    const/4 v1, 0x0

    cmp-long v5, v3, p1

    if-gtz v5, :cond_1

    .line 14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 16
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v3, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 17
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v3, p1

    if-ltz v5, :cond_2

    .line 18
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    add-int v4, v3, v2

    .line 19
    div-int/lit8 v4, v4, 0x2

    .line 20
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 21
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v5, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 22
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v5, p1

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    cmp-long v7, v5, p1

    if-lez v7, :cond_4

    add-int/lit8 v2, v4, -0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_6

    .line 23
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 24
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 25
    :cond_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    :goto_2
    if-eqz p3, :cond_7

    .line 26
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_7

    .line 27
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 28
    :cond_7
    array-length p0, p1

    invoke-static {p1, v1, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    sub-int/2addr v0, p3

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    sub-int/2addr p3, p2

    sub-int/2addr p3, p4

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    if-ne v0, p4, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    if-ne p3, p4, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 5
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    neg-int p1, p1

    int-to-float p1, p1

    neg-int p2, p2

    int-to-float p2, p2

    .line 7
    invoke-virtual {p4, p0, p1, p2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p3
.end method

.method public static downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "images"

    .line 1
    invoke-static {p0, v0}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    new-instance v1, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v1}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 8
    new-instance v2, Lcom/mob/tools/utils/BitmapHelper$1;

    invoke-direct {v2, p1, p0, v0}, Lcom/mob/tools/utils/BitmapHelper$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p1, v2, p0}, Lcom/mob/tools/network/NetworkHelper;->rawGet(Ljava/lang/String;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    const-string p0, "bitmap"

    .line 9
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static fixRect([I[I)[I
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1
    aget v2, p0, v1

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 2
    aget v4, p1, v1

    int-to-float v4, v4

    aget v5, p1, v3

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 3
    aget v2, p1, v1

    aput v2, v0, v1

    .line 4
    aget v2, p0, v3

    int-to-float v2, v2

    aget p1, p1, v1

    int-to-float p1, p1

    mul-float v2, v2, p1

    aget p0, p0, v1

    int-to-float p0, p0

    div-float/2addr v2, p0

    add-float/2addr v2, v5

    float-to-int p0, v2

    aput p0, v0, v3

    goto :goto_0

    .line 5
    :cond_0
    aget v2, p1, v3

    aput v2, v0, v3

    .line 6
    aget v2, p0, v1

    int-to-float v2, v2

    aget p1, p1, v3

    int-to-float p1, p1

    mul-float v2, v2, p1

    aget p0, p0, v3

    int-to-float p0, p0

    div-float/2addr v2, p0

    add-float/2addr v2, v5

    float-to-int p0, v2

    aput p0, v0, v1

    :goto_0
    return-object v0
.end method

.method public static fixRect_2([I[I)[I
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1
    aget v2, p0, v1

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 2
    aget v4, p1, v1

    int-to-float v4, v4

    aget v5, p1, v3

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 3
    aget v2, p1, v3

    aput v2, v0, v3

    .line 4
    aget v2, p0, v1

    int-to-float v2, v2

    aget p1, p1, v3

    int-to-float p1, p1

    mul-float v2, v2, p1

    aget p0, p0, v3

    int-to-float p0, p0

    div-float/2addr v2, p0

    add-float/2addr v2, v5

    float-to-int p0, v2

    aput p0, v0, v1

    goto :goto_0

    .line 5
    :cond_0
    aget v2, p1, v1

    aput v2, v0, v1

    .line 6
    aget v2, p0, v3

    int-to-float v2, v2

    aget p1, p1, v1

    int-to-float p1, p1

    mul-float v2, v2, p1

    aget p0, p0, v1

    int-to-float p0, p0

    div-float/2addr v2, p0

    add-float/2addr v2, v5

    float-to-int p0, v2

    aput p0, v0, v3

    :goto_0
    return-object v0
.end method

.method public static getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 14
    invoke-static {p0, p1}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-static {p0}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5
    invoke-static {v0, p1}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBitmap(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 7
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 8
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 10
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 11
    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 12
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    .line 13
    invoke-static {p0, v0}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmapByCompressQuality(Ljava/lang/String;IIIJ)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/mob/tools/utils/BitmapHelper;->getBitmapByCompressSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 p2, 0x64

    const/16 v0, 0xa

    if-lt p3, v0, :cond_0

    if-le p3, p2, :cond_1

    :cond_0
    const/16 p3, 0x64

    .line 2
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    invoke-static {p0}, Lcom/mob/tools/utils/BitmapHelper;->getBmpFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p0

    .line 4
    invoke-virtual {p1, p0, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-wide/16 v2, 0x2800

    const/4 v4, 0x0

    cmp-long v5, p4, v2

    if-gez v5, :cond_2

    .line 6
    array-length p0, v1

    invoke-static {v1, v4, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 7
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p0

    .line 8
    :cond_2
    :goto_0
    array-length v2, v1

    int-to-long v2, v2

    cmp-long v5, v2, p4

    if-lez v5, :cond_4

    const/16 v2, 0xb

    if-ge p3, v2, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    add-int/lit8 p3, p3, -0x6

    .line 10
    invoke-virtual {p1, p0, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 11
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    :cond_4
    :goto_1
    if-ne p3, p2, :cond_5

    goto :goto_2

    .line 12
    :cond_5
    array-length p0, v1

    invoke-static {v1, v4, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 13
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-object p1
.end method

.method public static getBitmapByCompressSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 5
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le p1, v1, :cond_3

    if-le p2, v1, :cond_3

    .line 6
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 7
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v5, p1

    .line 8
    div-int p1, v2, v0

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    cmpl-float v6, p1, p2

    if-gtz v6, :cond_1

    float-to-double v6, p1

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double p1, v6, v8

    if-gez p1, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :goto_0
    mul-float v3, v4, p2

    cmpg-float v5, v3, p1

    if-gtz v5, :cond_2

    move v4, v3

    goto :goto_0

    :cond_1
    :goto_1
    mul-float p1, v4, p2

    cmpg-float v5, p1, v3

    if-gtz v5, :cond_2

    move v4, p1

    goto :goto_1

    :cond_2
    float-to-int p1, v4

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    :goto_2
    if-ge p1, v1, :cond_4

    goto :goto_3

    :cond_4
    move v1, p1

    .line 10
    :goto_3
    div-int p1, v2, v1

    sget p2, Lcom/mob/tools/utils/BitmapHelper;->a:I

    if-gt p1, p2, :cond_6

    div-int p1, v0, v1

    sget p2, Lcom/mob/tools/utils/BitmapHelper;->b:I

    if-le p1, p2, :cond_5

    goto :goto_4

    .line 11
    :cond_5
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 12
    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p2, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 13
    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 14
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static getBmpFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 4

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v3, "jpg"

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "jpeg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "bmp"

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "tif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {p0}, Lcom/mob/tools/utils/BitmapHelper;->getMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_3

    .line 12
    :cond_3
    :goto_0
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_3

    .line 13
    :cond_4
    :goto_1
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_3

    .line 14
    :cond_5
    :goto_2
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_3
    return-object p0
.end method

.method public static getBmpFormat([B)Landroid/graphics/Bitmap$CompressFormat;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/mob/tools/utils/BitmapHelper;->a([B)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-eqz p0, :cond_1

    const-string v1, "png"

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :cond_1
    return-object v0
.end method

.method public static getMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x8

    new-array p0, p0, [B

    .line 2
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 4
    invoke-static {p0}, Lcom/mob/tools/utils/BitmapHelper;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0
.end method

.method public static isBlackBitmap(Landroid/graphics/Bitmap;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    new-array v10, v1, [I

    const/4 v4, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object v2, p0

    move-object v3, v10

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 4
    aget v3, v10, v2

    const v4, 0xffffff

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    xor-int/2addr p0, v0

    return p0

    :cond_3
    :goto_2
    return v0
.end method

.method public static mixAlpha(II)I
    .locals 6

    ushr-int/lit8 v0, p0, 0x18

    const/high16 v1, 0xff0000

    and-int v2, p0, v1

    ushr-int/lit8 v2, v2, 0x10

    const v3, 0xff00

    and-int v4, p0, v3

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 p0, p0, 0xff

    and-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x10

    and-int/2addr v3, p1

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit16 p1, p1, 0xff

    mul-int v2, v2, v0

    rsub-int v5, v0, 0xff

    mul-int v1, v1, v5

    add-int/2addr v2, v1

    .line 1
    div-int/lit16 v2, v2, 0xff

    shl-int/lit8 v1, v2, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    mul-int v4, v4, v0

    mul-int v3, v3, v5

    add-int/2addr v4, v3

    div-int/lit16 v4, v4, 0xff

    shl-int/lit8 v2, v4, 0x8

    or-int/2addr v1, v2

    mul-int v0, v0, p0

    mul-int v5, v5, p1

    add-int/2addr v0, v5

    div-int/lit16 v0, v0, 0xff

    or-int p0, v1, v0

    return p0
.end method

.method public static roundBitmap(Landroid/graphics/Bitmap;IIFFFF)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-ne v0, p1, :cond_1

    if-eq v1, p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v4, -0xbdbdbe

    .line 7
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 8
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 11
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p2, 0x8

    new-array p2, p2, [F

    aput p3, p2, v3

    aput p3, p2, p1

    const/4 p1, 0x2

    aput p4, p2, p1

    const/4 p1, 0x3

    aput p4, p2, p1

    const/4 p1, 0x4

    aput p5, p2, p1

    const/4 p1, 0x5

    aput p5, p2, p1

    const/4 p1, 0x6

    aput p6, p2, p1

    const/4 p1, 0x7

    aput p6, p2, p1

    .line 12
    new-instance p1, Landroid/graphics/RectF;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p3, p3, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 13
    new-instance p3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {p3, p2, p1, p2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 14
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1, p3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 15
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 16
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 17
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 18
    invoke-virtual {v1, p0, v2, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Z)Z
    .locals 5

    .line 2
    invoke-static {p0}, Lcom/mob/tools/utils/BitmapHelper;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/mob/tools/utils/FileUtils;->createFileByDeleteOldFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 3
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 p1, 0x64

    .line 4
    :try_start_1
    invoke-virtual {p0, p2, p1, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p3, :cond_1

    .line 5
    :try_start_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v3

    goto :goto_2

    :cond_1
    :goto_0
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v3, p0, v1

    .line 7
    invoke-static {p0}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v0, v3

    goto :goto_1

    :catchall_2
    move-exception p0

    :goto_1
    const/4 p1, 0x0

    .line 8
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v0, p0, v1

    .line 9
    invoke-static {p0}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    :goto_3
    return p1

    :catchall_3
    move-exception p0

    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 10
    throw p0

    :cond_2
    :goto_4
    return v1
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/mob/tools/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mob/tools/utils/BitmapHelper;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Z)Z

    move-result p0

    return p0
.end method

.method public static saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 9
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x50

    invoke-static {p0, p1, v0, v1}, Lcom/mob/tools/utils/BitmapHelper;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "images"

    .line 1
    invoke-static {p0, v0}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p2, v0, :cond_0

    const-string v0, ".png"

    goto :goto_0

    :cond_0
    const-string v0, ".jpg"

    .line 3
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 5
    invoke-virtual {p1, p2, p3, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 6
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 7
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static saveBitmapByCompress(Ljava/lang/String;III)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/mob/tools/utils/BitmapHelper;->getBitmapByCompressSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 p2, 0xa

    const/16 v0, 0x64

    if-le p3, v0, :cond_0

    const/16 p3, 0x64

    goto :goto_0

    :cond_0
    if-ge p3, p2, :cond_1

    const/16 p3, 0xa

    .line 2
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/mob/tools/utils/BitmapHelper;->getBmpFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p2

    .line 3
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p2, v0, :cond_2

    const-string v0, ".png"

    goto :goto_1

    :cond_2
    const-string v0, ".jpg"

    .line 4
    :goto_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 6
    invoke-virtual {p1, p2, p3, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 7
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 8
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static saveViewToImage(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v1, :cond_2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0, v1, v2}, Lcom/mob/tools/utils/BitmapHelper;->saveViewToImage(Landroid/view/View;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static saveViewToImage(Landroid/view/View;II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4
    invoke-static {p0, p1, p2}, Lcom/mob/tools/utils/BitmapHelper;->captureView(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p2, "screenshot"

    invoke-static {p0, p2}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 9
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 10
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 11
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 12
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static scaleBitmapByHeight(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-static {p0, p2}, Lcom/mob/tools/utils/BitmapHelper;->scaleBitmapByHeight(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object p2
.end method

.method public static scaleBitmapByHeight(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int v0, v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/2addr v0, v1

    const/4 v1, 0x1

    .line 6
    invoke-static {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
