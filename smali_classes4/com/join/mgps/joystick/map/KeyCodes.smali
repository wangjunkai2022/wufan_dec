.class public final enum Lcom/join/mgps/joystick/map/KeyCodes;
.super Ljava/lang/Enum;
.source "KeyCodes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/joystick/map/KeyCodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_1:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_2:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_3:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_4:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_A:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_B:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_C:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_D:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_DOWN:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_DOWN1:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_E:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_F:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_L1:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_L2:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_LEFT:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_LEFT1:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_PRESS:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_R1:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_R2:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_RIGHT:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_RIGHT1:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_SELECT:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_SP0:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_SP1:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_SP2:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_SP3:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_SP4:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_START:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_UP:Lcom/join/mgps/joystick/map/KeyCodes;

.field public static final enum KEY_UP1:Lcom/join/mgps/joystick/map/KeyCodes;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 1
    new-instance v0, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v1, "KEY_UP"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_UP:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 2
    new-instance v1, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v4, "KEY_DOWN"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_DOWN:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 3
    new-instance v4, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v6, "KEY_LEFT"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_LEFT:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 4
    new-instance v6, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v8, "KEY_RIGHT"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_RIGHT:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 5
    new-instance v8, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v11, "KEY_A"

    const/16 v12, 0x10

    invoke-direct {v8, v11, v7, v12}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_A:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 6
    new-instance v11, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v13, "KEY_B"

    const/4 v14, 0x5

    const/16 v15, 0x20

    invoke-direct {v11, v13, v14, v15}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_B:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 7
    new-instance v13, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v15, "KEY_C"

    const/4 v14, 0x6

    const/16 v7, 0x40

    invoke-direct {v13, v15, v14, v7}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_C:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 8
    new-instance v7, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v15, "KEY_D"

    const/4 v14, 0x7

    const/16 v9, 0x80

    invoke-direct {v7, v15, v14, v9}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_D:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 9
    new-instance v9, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v15, "KEY_E"

    const/16 v14, 0x100

    invoke-direct {v9, v15, v10, v14}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_E:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 10
    new-instance v14, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v15, "KEY_F"

    const/16 v10, 0x9

    const/16 v5, 0x200

    invoke-direct {v14, v15, v10, v5}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_F:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 11
    new-instance v5, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v15, "KEY_L1"

    const/16 v10, 0xa

    const/16 v3, 0x400

    invoke-direct {v5, v15, v10, v3}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_L1:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 12
    new-instance v3, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v15, "KEY_R1"

    const/16 v10, 0xb

    const/16 v2, 0x800

    invoke-direct {v3, v15, v10, v2}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_R1:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 13
    new-instance v2, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v15, "KEY_L2"

    const/16 v10, 0xc

    const/16 v12, 0x1000

    invoke-direct {v2, v15, v10, v12}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_L2:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 14
    new-instance v12, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v15, "KEY_R2"

    const/16 v10, 0xd

    move-object/from16 v16, v2

    const/16 v2, 0x2000

    invoke-direct {v12, v15, v10, v2}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_R2:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 15
    new-instance v2, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v15, "KEY_1"

    const/16 v10, 0xe

    move-object/from16 v17, v12

    const/16 v12, 0x4000

    invoke-direct {v2, v15, v10, v12}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_1:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 16
    new-instance v12, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v15, "KEY_2"

    const/16 v10, 0xf

    move-object/from16 v18, v2

    const v2, 0x8000

    invoke-direct {v12, v15, v10, v2}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_2:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 17
    new-instance v2, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v15, "KEY_3"

    const/high16 v10, 0x10000

    move-object/from16 v19, v12

    const/16 v12, 0x10

    invoke-direct {v2, v15, v12, v10}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_3:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 18
    new-instance v10, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v12, "KEY_4"

    const/16 v15, 0x11

    move-object/from16 v20, v2

    const/high16 v2, 0x20000

    invoke-direct {v10, v12, v15, v2}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_4:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 19
    new-instance v2, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v12, "KEY_UP1"

    const/16 v15, 0x12

    move-object/from16 v21, v10

    const/high16 v10, 0x40000

    invoke-direct {v2, v12, v15, v10}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_UP1:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 20
    new-instance v10, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v12, "KEY_DOWN1"

    const/16 v15, 0x13

    move-object/from16 v22, v2

    const/high16 v2, 0x80000

    invoke-direct {v10, v12, v15, v2}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_DOWN1:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 21
    new-instance v2, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v12, "KEY_LEFT1"

    const/16 v15, 0x14

    move-object/from16 v23, v10

    const/high16 v10, 0x100000

    invoke-direct {v2, v12, v15, v10}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_LEFT1:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 22
    new-instance v10, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v12, "KEY_RIGHT1"

    const/16 v15, 0x15

    move-object/from16 v24, v2

    const/high16 v2, 0x200000

    invoke-direct {v10, v12, v15, v2}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_RIGHT1:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 23
    new-instance v2, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v12, "KEY_START"

    const/16 v15, 0x16

    move-object/from16 v25, v10

    const/high16 v10, 0x400000

    invoke-direct {v2, v12, v15, v10}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_START:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 24
    new-instance v10, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v12, "KEY_SELECT"

    const/16 v15, 0x17

    move-object/from16 v26, v2

    const/high16 v2, 0x800000

    invoke-direct {v10, v12, v15, v2}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_SELECT:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 25
    new-instance v2, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v12, "KEY_PRESS"

    const/16 v15, 0x18

    move-object/from16 v27, v10

    const/high16 v10, 0x2000000

    invoke-direct {v2, v12, v15, v10}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_PRESS:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 26
    new-instance v10, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v12, "KEY_SP0"

    const/16 v15, 0x19

    move-object/from16 v28, v2

    const/high16 v2, 0x4000000

    invoke-direct {v10, v12, v15, v2}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_SP0:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 27
    new-instance v2, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v12, "KEY_SP1"

    const/16 v15, 0x1a

    move-object/from16 v29, v10

    const/high16 v10, 0x8000000

    invoke-direct {v2, v12, v15, v10}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_SP1:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 28
    new-instance v10, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v12, "KEY_SP2"

    const/16 v15, 0x1b

    move-object/from16 v30, v2

    const/high16 v2, 0x10000000

    invoke-direct {v10, v12, v15, v2}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_SP2:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 29
    new-instance v2, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v12, "KEY_SP3"

    const/16 v15, 0x1c

    move-object/from16 v31, v10

    const/high16 v10, 0x20000000

    invoke-direct {v2, v12, v15, v10}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_SP3:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 30
    new-instance v10, Lcom/join/mgps/joystick/map/KeyCodes;

    const-string v12, "KEY_SP4"

    const/16 v15, 0x1d

    move-object/from16 v32, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v10, v12, v15, v2}, Lcom/join/mgps/joystick/map/KeyCodes;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_SP4:Lcom/join/mgps/joystick/map/KeyCodes;

    const/16 v2, 0x1e

    new-array v2, v2, [Lcom/join/mgps/joystick/map/KeyCodes;

    const/4 v12, 0x0

    aput-object v0, v2, v12

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v11, v2, v0

    const/4 v0, 0x6

    aput-object v13, v2, v0

    const/4 v0, 0x7

    aput-object v7, v2, v0

    const/16 v0, 0x8

    aput-object v9, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v5, v2, v0

    const/16 v0, 0xb

    aput-object v3, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v10, v2, v0

    .line 31
    sput-object v2, Lcom/join/mgps/joystick/map/KeyCodes;->$VALUES:[Lcom/join/mgps/joystick/map/KeyCodes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/join/mgps/joystick/map/KeyCodes;->value:I

    return-void
.end method

.method public static find(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/join/mgps/joystick/map/KeyCodes;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/join/mgps/joystick/map/KeyCodes;->values()[Lcom/join/mgps/joystick/map/KeyCodes;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/joystick/map/KeyCodes;

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v3

    and-int/2addr v3, p0

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getMap()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/join/mgps/joystick/map/KeyCodes;->values()[Lcom/join/mgps/joystick/map/KeyCodes;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 4
    aget-object v3, v1, v2

    .line 5
    invoke-virtual {v3}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/joystick/map/KeyCodes;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/joystick/map/KeyCodes;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/joystick/map/KeyCodes;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/joystick/map/KeyCodes;->$VALUES:[Lcom/join/mgps/joystick/map/KeyCodes;

    invoke-virtual {v0}, [Lcom/join/mgps/joystick/map/KeyCodes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/joystick/map/KeyCodes;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/joystick/map/KeyCodes;->value:I

    return v0
.end method
