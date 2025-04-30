.class public final Lcom/wufan/user/service/protobuf/l0;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UserInfo.java"

# interfaces
.implements Lcom/wufan/user/service/protobuf/m0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/l0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/user/service/protobuf/l0;",
        "Lcom/wufan/user/service/protobuf/l0$b;",
        ">;",
        "Lcom/wufan/user/service/protobuf/m0;"
    }
.end annotation


# static fields
.field public static final A0:I = 0x13

.field public static final B0:I = 0x14

.field public static final C0:I = 0x15

.field public static final D0:I = 0x16

.field public static final E0:I = 0x17

.field public static final F:I = 0x1

.field public static final F0:I = 0x18

.field public static final G:I = 0x2

.field public static final G0:I = 0x19

.field public static final H:I = 0x1d

.field public static final H0:I = 0x1a

.field public static final I:I = 0x3

.field public static final I0:I = 0x1b

.field public static final J:I = 0x4

.field public static final J0:I = 0x1c

.field public static final K:I = 0x5

.field public static final K0:I = 0x1e

.field private static final L0:Lcom/wufan/user/service/protobuf/l0;

.field private static volatile M0:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/l0;",
            ">;"
        }
    .end annotation
.end field

.field public static final n0:I = 0x6

.field public static final o0:I = 0x7

.field public static final p0:I = 0x8

.field public static final q0:I = 0x9

.field public static final r0:I = 0xa

.field public static final s0:I = 0xb

.field public static final t0:I = 0xc

.field public static final u0:I = 0xd

.field public static final v0:I = 0xe

.field public static final w0:I = 0xf

.field public static final x0:I = 0x10

.field public static final y0:I = 0x11

.field public static final z0:I = 0x12


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/wufan/user/service/protobuf/d;",
            ">;"
        }
    .end annotation
.end field

.field private E:J

.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:I

.field private r:J

.field private s:I

.field private t:I

.field private u:Lcom/wufan/user/service/protobuf/h;

.field private v:I

.field private w:Ljava/lang/String;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/user/service/protobuf/l0;

    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/l0;-><init>()V

    sput-object v0, Lcom/wufan/user/service/protobuf/l0;->L0:Lcom/wufan/user/service/protobuf/l0;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->c:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->d:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->h:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->l:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->n:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->w:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->B:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->C:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic A3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->clearAccount()V

    return-void
.end method

.method private A4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/user/service/protobuf/l0;->k:I

    return-void
.end method

.method private A5(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->t:I

    return-void
.end method

.method static synthetic B3(Lcom/wufan/user/service/protobuf/l0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->G5(I)V

    return-void
.end method

.method private B4()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private B5(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->z:I

    return-void
.end method

.method static synthetic C3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->J4()V

    return-void
.end method

.method private C4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/user/service/protobuf/l0;->i:I

    return-void
.end method

.method private C5(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->x:I

    return-void
.end method

.method static synthetic D3(Lcom/wufan/user/service/protobuf/l0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->A5(I)V

    return-void
.end method

.method private D4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/user/service/protobuf/l0;->t:I

    return-void
.end method

.method private D5(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->y:I

    return-void
.end method

.method static synthetic E3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->D4()V

    return-void
.end method

.method private E4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/user/service/protobuf/l0;->z:I

    return-void
.end method

.method private E5(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->v:I

    return-void
.end method

.method static synthetic F3(Lcom/wufan/user/service/protobuf/l0;Lcom/wufan/user/service/protobuf/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->J5(Lcom/wufan/user/service/protobuf/h;)V

    return-void
.end method

.method private F4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/user/service/protobuf/l0;->x:I

    return-void
.end method

.method private F5(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->j:I

    return-void
.end method

.method static synthetic G3(Lcom/wufan/user/service/protobuf/l0;Lcom/wufan/user/service/protobuf/h$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->I5(Lcom/wufan/user/service/protobuf/h$b;)V

    return-void
.end method

.method private G4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/user/service/protobuf/l0;->y:I

    return-void
.end method

.method private G5(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->s:I

    return-void
.end method

.method static synthetic H3(Lcom/wufan/user/service/protobuf/l0;Lcom/wufan/user/service/protobuf/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->b5(Lcom/wufan/user/service/protobuf/h;)V

    return-void
.end method

.method private H4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/user/service/protobuf/l0;->v:I

    return-void
.end method

.method private H5(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/l0;->E:J

    return-void
.end method

.method static synthetic I3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->L4()V

    return-void
.end method

.method private I4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/user/service/protobuf/l0;->j:I

    return-void
.end method

.method private I5(Lcom/wufan/user/service/protobuf/h$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/user/service/protobuf/h;

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->u:Lcom/wufan/user/service/protobuf/h;

    return-void
.end method

.method static synthetic J3(Lcom/wufan/user/service/protobuf/l0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->E5(I)V

    return-void
.end method

.method private J4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/user/service/protobuf/l0;->s:I

    return-void
.end method

.method private J5(Lcom/wufan/user/service/protobuf/h;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->u:Lcom/wufan/user/service/protobuf/h;

    return-void
.end method

.method static synthetic K3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->H4()V

    return-void
.end method

.method private K4()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/user/service/protobuf/l0;->E:J

    return-void
.end method

.method private K5(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->l:Ljava/lang/String;

    return-void
.end method

.method static synthetic L3(Lcom/wufan/user/service/protobuf/l0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->q5(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private L4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->u:Lcom/wufan/user/service/protobuf/h;

    return-void
.end method

.method private L5(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->l:Ljava/lang/String;

    return-void
.end method

.method static synthetic M3(Lcom/wufan/user/service/protobuf/l0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->N5(Ljava/lang/String;)V

    return-void
.end method

.method private M4()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/l0;->Y4()Lcom/wufan/user/service/protobuf/l0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/l0;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->l:Ljava/lang/String;

    return-void
.end method

.method private M5(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/l0;->f:J

    return-void
.end method

.method static synthetic N3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->O4()V

    return-void
.end method

.method private N4()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/user/service/protobuf/l0;->f:J

    return-void
.end method

.method private N5(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->w:Ljava/lang/String;

    return-void
.end method

.method static synthetic O3(Lcom/wufan/user/service/protobuf/l0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->O5(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private O4()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/l0;->Y4()Lcom/wufan/user/service/protobuf/l0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/l0;->x0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->w:Ljava/lang/String;

    return-void
.end method

.method private O5(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->w:Ljava/lang/String;

    return-void
.end method

.method static synthetic P3(Lcom/wufan/user/service/protobuf/l0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->C5(I)V

    return-void
.end method

.method private P4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/user/service/protobuf/l0;->e:I

    return-void
.end method

.method private P5(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->e:I

    return-void
.end method

.method static synthetic Q3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->F4()V

    return-void
.end method

.method private Q4()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/user/service/protobuf/l0;->g:J

    return-void
.end method

.method private Q5(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/l0;->g:J

    return-void
.end method

.method static synthetic R3(Lcom/wufan/user/service/protobuf/l0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->D5(I)V

    return-void
.end method

.method private R4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/user/service/protobuf/l0;->q:I

    return-void
.end method

.method private R5(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->q:I

    return-void
.end method

.method static synthetic S2()Lcom/wufan/user/service/protobuf/l0;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/l0;->L0:Lcom/wufan/user/service/protobuf/l0;

    return-object v0
.end method

.method static synthetic S3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->G4()V

    return-void
.end method

.method private S4()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/l0;->Y4()Lcom/wufan/user/service/protobuf/l0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/l0;->C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->C:Ljava/lang/String;

    return-void
.end method

.method private S5(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->C:Ljava/lang/String;

    return-void
.end method

.method static synthetic T2(Lcom/wufan/user/service/protobuf/l0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->setUid(I)V

    return-void
.end method

.method static synthetic T3(Lcom/wufan/user/service/protobuf/l0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->B5(I)V

    return-void
.end method

.method private T4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/user/service/protobuf/l0;->m:I

    return-void
.end method

.method private T5(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->C:Ljava/lang/String;

    return-void
.end method

.method static synthetic U2(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->P4()V

    return-void
.end method

.method static synthetic U3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->E4()V

    return-void
.end method

.method private U4()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/user/service/protobuf/l0;->r:J

    return-void
.end method

.method private U5(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->m:I

    return-void
.end method

.method static synthetic V2(Lcom/wufan/user/service/protobuf/l0;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/user/service/protobuf/l0;->M5(J)V

    return-void
.end method

.method static synthetic V3(Lcom/wufan/user/service/protobuf/l0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->W5(I)V

    return-void
.end method

.method private V4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/user/service/protobuf/l0;->A:I

    return-void
.end method

.method private V5(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/l0;->r:J

    return-void
.end method

.method static synthetic W2(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->N4()V

    return-void
.end method

.method static synthetic W3(Lcom/wufan/user/service/protobuf/l0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->setNickname(Ljava/lang/String;)V

    return-void
.end method

.method private W4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/user/service/protobuf/l0;->p:I

    return-void
.end method

.method private W5(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->A:I

    return-void
.end method

.method static synthetic X2(Lcom/wufan/user/service/protobuf/l0;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/user/service/protobuf/l0;->Q5(J)V

    return-void
.end method

.method static synthetic X3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->V4()V

    return-void
.end method

.method private X4()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private X5(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->p:I

    return-void
.end method

.method static synthetic Y2(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->Q4()V

    return-void
.end method

.method static synthetic Y3(Lcom/wufan/user/service/protobuf/l0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->setToken(Ljava/lang/String;)V

    return-void
.end method

.method public static Y4()Lcom/wufan/user/service/protobuf/l0;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/l0;->L0:Lcom/wufan/user/service/protobuf/l0;

    return-object v0
.end method

.method static synthetic Z2(Lcom/wufan/user/service/protobuf/l0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->u5(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Z3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->clearToken()V

    return-void
.end method

.method static synthetic a3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->z4()V

    return-void
.end method

.method static synthetic a4(Lcom/wufan/user/service/protobuf/l0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->setTokenBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic b3(Lcom/wufan/user/service/protobuf/l0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->v5(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic b4(Lcom/wufan/user/service/protobuf/l0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->S5(Ljava/lang/String;)V

    return-void
.end method

.method private b5(Lcom/wufan/user/service/protobuf/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->u:Lcom/wufan/user/service/protobuf/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/user/service/protobuf/h;->c3()Lcom/wufan/user/service/protobuf/h;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->u:Lcom/wufan/user/service/protobuf/h;

    .line 4
    invoke-static {v0}, Lcom/wufan/user/service/protobuf/h;->e3(Lcom/wufan/user/service/protobuf/h;)Lcom/wufan/user/service/protobuf/h$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/user/service/protobuf/h$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/user/service/protobuf/h;

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->u:Lcom/wufan/user/service/protobuf/h;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->u:Lcom/wufan/user/service/protobuf/h;

    :goto_0
    return-void
.end method

.method static synthetic c3(Lcom/wufan/user/service/protobuf/l0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->z5(I)V

    return-void
.end method

.method static synthetic c4(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->S4()V

    return-void
.end method

.method public static c5()Lcom/wufan/user/service/protobuf/l0$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/l0;->L0:Lcom/wufan/user/service/protobuf/l0;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/user/service/protobuf/l0$b;

    return-object v0
.end method

.method private clearAccount()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/l0;->Y4()Lcom/wufan/user/service/protobuf/l0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/l0;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->c:Ljava/lang/String;

    return-void
.end method

.method private clearNickname()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/l0;->Y4()Lcom/wufan/user/service/protobuf/l0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/l0;->getNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->d:Ljava/lang/String;

    return-void
.end method

.method private clearToken()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/l0;->Y4()Lcom/wufan/user/service/protobuf/l0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/l0;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->B:Ljava/lang/String;

    return-void
.end method

.method private clearUid()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/user/service/protobuf/l0;->b:I

    return-void
.end method

.method static synthetic d3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->C4()V

    return-void
.end method

.method static synthetic d4(Lcom/wufan/user/service/protobuf/l0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->T5(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static d5(Lcom/wufan/user/service/protobuf/l0;)Lcom/wufan/user/service/protobuf/l0$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/l0;->L0:Lcom/wufan/user/service/protobuf/l0;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/user/service/protobuf/l0$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/l0$b;

    return-object p0
.end method

.method static synthetic e3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->clearUid()V

    return-void
.end method

.method static synthetic e4(Lcom/wufan/user/service/protobuf/l0;ILcom/wufan/user/service/protobuf/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/user/service/protobuf/l0;->y5(ILcom/wufan/user/service/protobuf/d;)V

    return-void
.end method

.method public static e5(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/l0;->L0:Lcom/wufan/user/service/protobuf/l0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/l0;

    return-object p0
.end method

.method static synthetic f3(Lcom/wufan/user/service/protobuf/l0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->F5(I)V

    return-void
.end method

.method static synthetic f4(Lcom/wufan/user/service/protobuf/l0;ILcom/wufan/user/service/protobuf/d$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/user/service/protobuf/l0;->x5(ILcom/wufan/user/service/protobuf/d$b;)V

    return-void
.end method

.method public static f5(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/l0;->L0:Lcom/wufan/user/service/protobuf/l0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/l0;

    return-object p0
.end method

.method static synthetic g3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->I4()V

    return-void
.end method

.method static synthetic g4(Lcom/wufan/user/service/protobuf/l0;Lcom/wufan/user/service/protobuf/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->w4(Lcom/wufan/user/service/protobuf/d;)V

    return-void
.end method

.method public static g5(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/l0;->L0:Lcom/wufan/user/service/protobuf/l0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/l0;

    return-object p0
.end method

.method static synthetic h3(Lcom/wufan/user/service/protobuf/l0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->w5(I)V

    return-void
.end method

.method static synthetic h4(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->clearNickname()V

    return-void
.end method

.method public static h5(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/l0;->L0:Lcom/wufan/user/service/protobuf/l0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/l0;

    return-object p0
.end method

.method static synthetic i3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->A4()V

    return-void
.end method

.method static synthetic i4(Lcom/wufan/user/service/protobuf/l0;ILcom/wufan/user/service/protobuf/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/user/service/protobuf/l0;->u4(ILcom/wufan/user/service/protobuf/d;)V

    return-void
.end method

.method public static i5(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/user/service/protobuf/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/l0;->L0:Lcom/wufan/user/service/protobuf/l0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/l0;

    return-object p0
.end method

.method static synthetic j3(Lcom/wufan/user/service/protobuf/l0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->K5(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j4(Lcom/wufan/user/service/protobuf/l0;Lcom/wufan/user/service/protobuf/d$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->v4(Lcom/wufan/user/service/protobuf/d$b;)V

    return-void
.end method

.method public static j5(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/l0;->L0:Lcom/wufan/user/service/protobuf/l0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/l0;

    return-object p0
.end method

.method static synthetic k3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->M4()V

    return-void
.end method

.method static synthetic k4(Lcom/wufan/user/service/protobuf/l0;ILcom/wufan/user/service/protobuf/d$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/user/service/protobuf/l0;->t4(ILcom/wufan/user/service/protobuf/d$b;)V

    return-void
.end method

.method public static k5(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/l0;->L0:Lcom/wufan/user/service/protobuf/l0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/l0;

    return-object p0
.end method

.method static synthetic l3(Lcom/wufan/user/service/protobuf/l0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->L5(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic l4(Lcom/wufan/user/service/protobuf/l0;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->s4(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static l5(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/l0;->L0:Lcom/wufan/user/service/protobuf/l0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/l0;

    return-object p0
.end method

.method static synthetic m3(Lcom/wufan/user/service/protobuf/l0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->U5(I)V

    return-void
.end method

.method static synthetic m4(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->B4()V

    return-void
.end method

.method public static m5([B)Lcom/wufan/user/service/protobuf/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/l0;->L0:Lcom/wufan/user/service/protobuf/l0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/l0;

    return-object p0
.end method

.method static synthetic n3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->T4()V

    return-void
.end method

.method static synthetic n4(Lcom/wufan/user/service/protobuf/l0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->o5(I)V

    return-void
.end method

.method public static n5([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/l0;->L0:Lcom/wufan/user/service/protobuf/l0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/l0;

    return-object p0
.end method

.method static synthetic o3(Lcom/wufan/user/service/protobuf/l0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->s5(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o4(Lcom/wufan/user/service/protobuf/l0;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/user/service/protobuf/l0;->H5(J)V

    return-void
.end method

.method private o5(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->X4()V

    .line 2
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic p3(Lcom/wufan/user/service/protobuf/l0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->p5(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic p4(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->K4()V

    return-void
.end method

.method private p5(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->c:Ljava/lang/String;

    return-void
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/l0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/l0;->L0:Lcom/wufan/user/service/protobuf/l0;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->y4()V

    return-void
.end method

.method static synthetic q4(Lcom/wufan/user/service/protobuf/l0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->setNicknameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private q5(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic r3(Lcom/wufan/user/service/protobuf/l0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->t5(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic r4(Lcom/wufan/user/service/protobuf/l0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->P5(I)V

    return-void
.end method

.method private r5(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->o:I

    return-void
.end method

.method static synthetic s3(Lcom/wufan/user/service/protobuf/l0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->r5(I)V

    return-void
.end method

.method private s4(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/wufan/user/service/protobuf/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->X4()V

    .line 2
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private s5(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->n:Ljava/lang/String;

    return-void
.end method

.method private setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->d:Ljava/lang/String;

    return-void
.end method

.method private setNicknameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->d:Ljava/lang/String;

    return-void
.end method

.method private setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->B:Ljava/lang/String;

    return-void
.end method

.method private setTokenBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->B:Ljava/lang/String;

    return-void
.end method

.method private setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->b:I

    return-void
.end method

.method static synthetic t3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->x4()V

    return-void
.end method

.method private t4(ILcom/wufan/user/service/protobuf/d$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->X4()V

    .line 2
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/wufan/user/service/protobuf/d;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private t5(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->n:Ljava/lang/String;

    return-void
.end method

.method static synthetic u3(Lcom/wufan/user/service/protobuf/l0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->X5(I)V

    return-void
.end method

.method private u4(ILcom/wufan/user/service/protobuf/d;)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->X4()V

    .line 3
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private u5(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic v3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->W4()V

    return-void
.end method

.method private v4(Lcom/wufan/user/service/protobuf/d$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->X4()V

    .line 2
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/user/service/protobuf/d;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private v5(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic w3(Lcom/wufan/user/service/protobuf/l0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/l0;->R5(I)V

    return-void
.end method

.method private w4(Lcom/wufan/user/service/protobuf/d;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->X4()V

    .line 3
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private w5(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->k:I

    return-void
.end method

.method static synthetic x3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->R4()V

    return-void
.end method

.method private x4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/user/service/protobuf/l0;->o:I

    return-void
.end method

.method private x5(ILcom/wufan/user/service/protobuf/d$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->X4()V

    .line 2
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/wufan/user/service/protobuf/d;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic y3(Lcom/wufan/user/service/protobuf/l0;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/user/service/protobuf/l0;->V5(J)V

    return-void
.end method

.method private y4()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/l0;->Y4()Lcom/wufan/user/service/protobuf/l0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/l0;->i1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->n:Ljava/lang/String;

    return-void
.end method

.method private y5(ILcom/wufan/user/service/protobuf/d;)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->X4()V

    .line 3
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic z3(Lcom/wufan/user/service/protobuf/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/l0;->U4()V

    return-void
.end method

.method private z4()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/l0;->Y4()Lcom/wufan/user/service/protobuf/l0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/l0;->c0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->h:Ljava/lang/String;

    return-void
.end method

.method private z5(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->i:I

    return-void
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->C:Ljava/lang/String;

    return-object v0
.end method

.method public D0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->v:I

    return v0
.end method

.method public D1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->y:I

    return v0
.end method

.method public D2()Lcom/wufan/user/service/protobuf/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->u:Lcom/wufan/user/service/protobuf/h;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/user/service/protobuf/h;->c3()Lcom/wufan/user/service/protobuf/h;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public J()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->p:I

    return v0
.end method

.method public L2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->t:I

    return v0
.end method

.method public M1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/l0;->f:J

    return-wide v0
.end method

.method public W0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->k:I

    return v0
.end method

.method public Z4(I)Lcom/wufan/user/service/protobuf/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wufan/user/service/protobuf/e;

    return-object p1
.end method

.method public a5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wufan/user/service/protobuf/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public b0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d0()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public d2()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/l0$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, Lcom/wufan/user/service/protobuf/l0;->M0:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/user/service/protobuf/l0;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/user/service/protobuf/l0;->M0:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/user/service/protobuf/l0;->L0:Lcom/wufan/user/service/protobuf/l0;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/user/service/protobuf/l0;->M0:Lcom/google/protobuf/Parser;

    .line 6
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 7
    :cond_1
    :goto_0
    sget-object p1, Lcom/wufan/user/service/protobuf/l0;->M0:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_5

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_4

    .line 12
    :sswitch_0
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/user/service/protobuf/l0;->E:J

    goto :goto_1

    .line 13
    :sswitch_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->d:Ljava/lang/String;

    goto :goto_1

    .line 15
    :sswitch_2
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    .line 17
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    .line 19
    invoke-static {}, Lcom/wufan/user/service/protobuf/d;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/user/service/protobuf/d;

    .line 20
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :sswitch_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->C:Ljava/lang/String;

    goto :goto_1

    .line 23
    :sswitch_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->B:Ljava/lang/String;

    goto :goto_1

    .line 25
    :sswitch_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->A:I

    goto :goto_1

    .line 26
    :sswitch_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->z:I

    goto :goto_1

    .line 27
    :sswitch_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->y:I

    goto :goto_1

    .line 28
    :sswitch_8
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->x:I

    goto :goto_1

    .line 29
    :sswitch_9
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->w:Ljava/lang/String;

    goto :goto_1

    .line 31
    :sswitch_a
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->v:I

    goto :goto_1

    .line 32
    :sswitch_b
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->u:Lcom/wufan/user/service/protobuf/h;

    if-eqz p1, :cond_4

    .line 33
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/user/service/protobuf/h$b;

    goto :goto_2

    :cond_4
    move-object p1, v0

    .line 34
    :goto_2
    invoke-static {}, Lcom/wufan/user/service/protobuf/h;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/user/service/protobuf/h;

    iput-object v3, p0, Lcom/wufan/user/service/protobuf/l0;->u:Lcom/wufan/user/service/protobuf/h;

    if-eqz p1, :cond_2

    .line 35
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 36
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/user/service/protobuf/h;

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->u:Lcom/wufan/user/service/protobuf/h;

    goto/16 :goto_1

    .line 37
    :sswitch_c
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->t:I

    goto/16 :goto_1

    .line 38
    :sswitch_d
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->s:I

    goto/16 :goto_1

    .line 39
    :sswitch_e
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/user/service/protobuf/l0;->r:J

    goto/16 :goto_1

    .line 40
    :sswitch_f
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->q:I

    goto/16 :goto_1

    .line 41
    :sswitch_10
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->p:I

    goto/16 :goto_1

    .line 42
    :sswitch_11
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->o:I

    goto/16 :goto_1

    .line 43
    :sswitch_12
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->n:Ljava/lang/String;

    goto/16 :goto_1

    .line 45
    :sswitch_13
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->m:I

    goto/16 :goto_1

    .line 46
    :sswitch_14
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->l:Ljava/lang/String;

    goto/16 :goto_1

    .line 48
    :sswitch_15
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->k:I

    goto/16 :goto_1

    .line 49
    :sswitch_16
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->j:I

    goto/16 :goto_1

    .line 50
    :sswitch_17
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->i:I

    goto/16 :goto_1

    .line 51
    :sswitch_18
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->h:Ljava/lang/String;

    goto/16 :goto_1

    .line 53
    :sswitch_19
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/user/service/protobuf/l0;->g:J

    goto/16 :goto_1

    .line 54
    :sswitch_1a
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/user/service/protobuf/l0;->f:J

    goto/16 :goto_1

    .line 55
    :sswitch_1b
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->e:I

    goto/16 :goto_1

    .line 56
    :sswitch_1c
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->c:Ljava/lang/String;

    goto/16 :goto_1

    .line 58
    :sswitch_1d
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->b:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_3
    :sswitch_1e
    const/4 v1, 0x1

    goto/16 :goto_1

    :goto_4
    if-nez p1, :cond_2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 59
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 60
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 61
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    :goto_5
    throw p1

    .line 63
    :cond_5
    :pswitch_2
    sget-object p1, Lcom/wufan/user/service/protobuf/l0;->L0:Lcom/wufan/user/service/protobuf/l0;

    return-object p1

    .line 64
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 65
    check-cast p3, Lcom/wufan/user/service/protobuf/l0;

    .line 66
    iget p1, p0, Lcom/wufan/user/service/protobuf/l0;->b:I

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    iget v3, p3, Lcom/wufan/user/service/protobuf/l0;->b:I

    if-eqz v3, :cond_7

    const/4 v4, 0x1

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->b:I

    .line 67
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->c:Ljava/lang/String;

    iget-object v3, p3, Lcom/wufan/user/service/protobuf/l0;->c:Ljava/lang/String;

    .line 68
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/wufan/user/service/protobuf/l0;->c:Ljava/lang/String;

    .line 69
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->c:Ljava/lang/String;

    .line 70
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->d:Ljava/lang/String;

    iget-object v3, p3, Lcom/wufan/user/service/protobuf/l0;->d:Ljava/lang/String;

    .line 71
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/wufan/user/service/protobuf/l0;->d:Ljava/lang/String;

    .line 72
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->d:Ljava/lang/String;

    .line 73
    iget p1, p0, Lcom/wufan/user/service/protobuf/l0;->e:I

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    iget v3, p3, Lcom/wufan/user/service/protobuf/l0;->e:I

    if-eqz v3, :cond_9

    const/4 v4, 0x1

    goto :goto_9

    :cond_9
    const/4 v4, 0x0

    :goto_9
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->e:I

    .line 74
    iget-wide v5, p0, Lcom/wufan/user/service/protobuf/l0;->f:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_a

    const/4 v4, 0x1

    goto :goto_a

    :cond_a
    const/4 v4, 0x0

    :goto_a
    iget-wide v8, p3, Lcom/wufan/user/service/protobuf/l0;->f:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_b

    const/4 v7, 0x1

    goto :goto_b

    :cond_b
    const/4 v7, 0x0

    :goto_b
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/user/service/protobuf/l0;->f:J

    .line 75
    iget-wide v5, p0, Lcom/wufan/user/service/protobuf/l0;->g:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_c

    const/4 v4, 0x1

    goto :goto_c

    :cond_c
    const/4 v4, 0x0

    :goto_c
    iget-wide v8, p3, Lcom/wufan/user/service/protobuf/l0;->g:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_d

    const/4 v7, 0x1

    goto :goto_d

    :cond_d
    const/4 v7, 0x0

    :goto_d
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/user/service/protobuf/l0;->g:J

    .line 76
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->h:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->h:Ljava/lang/String;

    iget-object v3, p3, Lcom/wufan/user/service/protobuf/l0;->h:Ljava/lang/String;

    .line 77
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/wufan/user/service/protobuf/l0;->h:Ljava/lang/String;

    .line 78
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->h:Ljava/lang/String;

    .line 79
    iget p1, p0, Lcom/wufan/user/service/protobuf/l0;->i:I

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    :goto_e
    iget v3, p3, Lcom/wufan/user/service/protobuf/l0;->i:I

    if-eqz v3, :cond_f

    const/4 v4, 0x1

    goto :goto_f

    :cond_f
    const/4 v4, 0x0

    :goto_f
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->i:I

    .line 80
    iget p1, p0, Lcom/wufan/user/service/protobuf/l0;->j:I

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    goto :goto_10

    :cond_10
    const/4 v0, 0x0

    :goto_10
    iget v3, p3, Lcom/wufan/user/service/protobuf/l0;->j:I

    if-eqz v3, :cond_11

    const/4 v4, 0x1

    goto :goto_11

    :cond_11
    const/4 v4, 0x0

    :goto_11
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->j:I

    .line 81
    iget p1, p0, Lcom/wufan/user/service/protobuf/l0;->k:I

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    goto :goto_12

    :cond_12
    const/4 v0, 0x0

    :goto_12
    iget v3, p3, Lcom/wufan/user/service/protobuf/l0;->k:I

    if-eqz v3, :cond_13

    const/4 v4, 0x1

    goto :goto_13

    :cond_13
    const/4 v4, 0x0

    :goto_13
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->k:I

    .line 82
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->l:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->l:Ljava/lang/String;

    iget-object v3, p3, Lcom/wufan/user/service/protobuf/l0;->l:Ljava/lang/String;

    .line 83
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/wufan/user/service/protobuf/l0;->l:Ljava/lang/String;

    .line 84
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->l:Ljava/lang/String;

    .line 85
    iget p1, p0, Lcom/wufan/user/service/protobuf/l0;->m:I

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    goto :goto_14

    :cond_14
    const/4 v0, 0x0

    :goto_14
    iget v3, p3, Lcom/wufan/user/service/protobuf/l0;->m:I

    if-eqz v3, :cond_15

    const/4 v4, 0x1

    goto :goto_15

    :cond_15
    const/4 v4, 0x0

    :goto_15
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->m:I

    .line 86
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->n:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->n:Ljava/lang/String;

    iget-object v3, p3, Lcom/wufan/user/service/protobuf/l0;->n:Ljava/lang/String;

    .line 87
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/wufan/user/service/protobuf/l0;->n:Ljava/lang/String;

    .line 88
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->n:Ljava/lang/String;

    .line 89
    iget p1, p0, Lcom/wufan/user/service/protobuf/l0;->o:I

    if-eqz p1, :cond_16

    const/4 v0, 0x1

    goto :goto_16

    :cond_16
    const/4 v0, 0x0

    :goto_16
    iget v3, p3, Lcom/wufan/user/service/protobuf/l0;->o:I

    if-eqz v3, :cond_17

    const/4 v4, 0x1

    goto :goto_17

    :cond_17
    const/4 v4, 0x0

    :goto_17
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->o:I

    .line 90
    iget p1, p0, Lcom/wufan/user/service/protobuf/l0;->p:I

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    goto :goto_18

    :cond_18
    const/4 v0, 0x0

    :goto_18
    iget v3, p3, Lcom/wufan/user/service/protobuf/l0;->p:I

    if-eqz v3, :cond_19

    const/4 v4, 0x1

    goto :goto_19

    :cond_19
    const/4 v4, 0x0

    :goto_19
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->p:I

    .line 91
    iget p1, p0, Lcom/wufan/user/service/protobuf/l0;->q:I

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1a

    :cond_1a
    const/4 v0, 0x0

    :goto_1a
    iget v3, p3, Lcom/wufan/user/service/protobuf/l0;->q:I

    if-eqz v3, :cond_1b

    const/4 v4, 0x1

    goto :goto_1b

    :cond_1b
    const/4 v4, 0x0

    :goto_1b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->q:I

    .line 92
    iget-wide v5, p0, Lcom/wufan/user/service/protobuf/l0;->r:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_1c

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1c
    const/4 v4, 0x0

    :goto_1c
    iget-wide v8, p3, Lcom/wufan/user/service/protobuf/l0;->r:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_1d

    const/4 v7, 0x1

    goto :goto_1d

    :cond_1d
    const/4 v7, 0x0

    :goto_1d
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/user/service/protobuf/l0;->r:J

    .line 93
    iget p1, p0, Lcom/wufan/user/service/protobuf/l0;->s:I

    if-eqz p1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1e
    const/4 v0, 0x0

    :goto_1e
    iget v3, p3, Lcom/wufan/user/service/protobuf/l0;->s:I

    if-eqz v3, :cond_1f

    const/4 v4, 0x1

    goto :goto_1f

    :cond_1f
    const/4 v4, 0x0

    :goto_1f
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->s:I

    .line 94
    iget p1, p0, Lcom/wufan/user/service/protobuf/l0;->t:I

    if-eqz p1, :cond_20

    const/4 v0, 0x1

    goto :goto_20

    :cond_20
    const/4 v0, 0x0

    :goto_20
    iget v3, p3, Lcom/wufan/user/service/protobuf/l0;->t:I

    if-eqz v3, :cond_21

    const/4 v4, 0x1

    goto :goto_21

    :cond_21
    const/4 v4, 0x0

    :goto_21
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->t:I

    .line 95
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->u:Lcom/wufan/user/service/protobuf/h;

    iget-object v0, p3, Lcom/wufan/user/service/protobuf/l0;->u:Lcom/wufan/user/service/protobuf/h;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/user/service/protobuf/h;

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->u:Lcom/wufan/user/service/protobuf/h;

    .line 96
    iget p1, p0, Lcom/wufan/user/service/protobuf/l0;->v:I

    if-eqz p1, :cond_22

    const/4 v0, 0x1

    goto :goto_22

    :cond_22
    const/4 v0, 0x0

    :goto_22
    iget v3, p3, Lcom/wufan/user/service/protobuf/l0;->v:I

    if-eqz v3, :cond_23

    const/4 v4, 0x1

    goto :goto_23

    :cond_23
    const/4 v4, 0x0

    :goto_23
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->v:I

    .line 97
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->w:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->w:Ljava/lang/String;

    iget-object v3, p3, Lcom/wufan/user/service/protobuf/l0;->w:Ljava/lang/String;

    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/wufan/user/service/protobuf/l0;->w:Ljava/lang/String;

    .line 99
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->w:Ljava/lang/String;

    .line 100
    iget p1, p0, Lcom/wufan/user/service/protobuf/l0;->x:I

    if-eqz p1, :cond_24

    const/4 v0, 0x1

    goto :goto_24

    :cond_24
    const/4 v0, 0x0

    :goto_24
    iget v3, p3, Lcom/wufan/user/service/protobuf/l0;->x:I

    if-eqz v3, :cond_25

    const/4 v4, 0x1

    goto :goto_25

    :cond_25
    const/4 v4, 0x0

    :goto_25
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->x:I

    .line 101
    iget p1, p0, Lcom/wufan/user/service/protobuf/l0;->y:I

    if-eqz p1, :cond_26

    const/4 v0, 0x1

    goto :goto_26

    :cond_26
    const/4 v0, 0x0

    :goto_26
    iget v3, p3, Lcom/wufan/user/service/protobuf/l0;->y:I

    if-eqz v3, :cond_27

    const/4 v4, 0x1

    goto :goto_27

    :cond_27
    const/4 v4, 0x0

    :goto_27
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->y:I

    .line 102
    iget p1, p0, Lcom/wufan/user/service/protobuf/l0;->z:I

    if-eqz p1, :cond_28

    const/4 v0, 0x1

    goto :goto_28

    :cond_28
    const/4 v0, 0x0

    :goto_28
    iget v3, p3, Lcom/wufan/user/service/protobuf/l0;->z:I

    if-eqz v3, :cond_29

    const/4 v4, 0x1

    goto :goto_29

    :cond_29
    const/4 v4, 0x0

    :goto_29
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->z:I

    .line 103
    iget p1, p0, Lcom/wufan/user/service/protobuf/l0;->A:I

    if-eqz p1, :cond_2a

    const/4 v0, 0x1

    goto :goto_2a

    :cond_2a
    const/4 v0, 0x0

    :goto_2a
    iget v3, p3, Lcom/wufan/user/service/protobuf/l0;->A:I

    if-eqz v3, :cond_2b

    const/4 v4, 0x1

    goto :goto_2b

    :cond_2b
    const/4 v4, 0x0

    :goto_2b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->A:I

    .line 104
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->B:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->B:Ljava/lang/String;

    iget-object v3, p3, Lcom/wufan/user/service/protobuf/l0;->B:Ljava/lang/String;

    .line 105
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/wufan/user/service/protobuf/l0;->B:Ljava/lang/String;

    .line 106
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->B:Ljava/lang/String;

    .line 107
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->C:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->C:Ljava/lang/String;

    iget-object v3, p3, Lcom/wufan/user/service/protobuf/l0;->C:Ljava/lang/String;

    .line 108
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/wufan/user/service/protobuf/l0;->C:Ljava/lang/String;

    .line 109
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->C:Ljava/lang/String;

    .line 110
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    .line 111
    iget-wide v3, p0, Lcom/wufan/user/service/protobuf/l0;->E:J

    cmp-long p1, v3, v10

    if-eqz p1, :cond_2c

    const/4 p1, 0x1

    goto :goto_2c

    :cond_2c
    const/4 p1, 0x0

    :goto_2c
    iget-wide v5, p3, Lcom/wufan/user/service/protobuf/l0;->E:J

    cmp-long v0, v5, v10

    if-eqz v0, :cond_2d

    const/4 v7, 0x1

    goto :goto_2d

    :cond_2d
    const/4 v7, 0x0

    :goto_2d
    move-object v0, p2

    move v1, p1

    move-wide v2, v3

    move v4, v7

    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wufan/user/service/protobuf/l0;->E:J

    .line 112
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_2e

    .line 113
    iget p1, p0, Lcom/wufan/user/service/protobuf/l0;->a:I

    iget p2, p3, Lcom/wufan/user/service/protobuf/l0;->a:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/wufan/user/service/protobuf/l0;->a:I

    :cond_2e
    return-object p0

    .line 114
    :pswitch_4
    new-instance p1, Lcom/wufan/user/service/protobuf/l0$b;

    invoke-direct {p1, v0}, Lcom/wufan/user/service/protobuf/l0$b;-><init>(Lcom/wufan/user/service/protobuf/l0$a;)V

    return-object p1

    .line 115
    :pswitch_5
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 116
    :pswitch_6
    sget-object p1, Lcom/wufan/user/service/protobuf/l0;->L0:Lcom/wufan/user/service/protobuf/l0;

    return-object p1

    .line 117
    :pswitch_7
    new-instance p1, Lcom/wufan/user/service/protobuf/l0;

    invoke-direct {p1}, Lcom/wufan/user/service/protobuf/l0;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_1d
        0x12 -> :sswitch_1c
        0x18 -> :sswitch_1b
        0x20 -> :sswitch_1a
        0x28 -> :sswitch_19
        0x32 -> :sswitch_18
        0x38 -> :sswitch_17
        0x40 -> :sswitch_16
        0x48 -> :sswitch_15
        0x52 -> :sswitch_14
        0x58 -> :sswitch_13
        0x62 -> :sswitch_12
        0x68 -> :sswitch_11
        0x70 -> :sswitch_10
        0x78 -> :sswitch_f
        0x80 -> :sswitch_e
        0x88 -> :sswitch_d
        0x90 -> :sswitch_c
        0x9a -> :sswitch_b
        0xa0 -> :sswitch_a
        0xaa -> :sswitch_9
        0xb0 -> :sswitch_8
        0xb8 -> :sswitch_7
        0xc0 -> :sswitch_6
        0xc8 -> :sswitch_5
        0xd2 -> :sswitch_4
        0xda -> :sswitch_3
        0xe2 -> :sswitch_2
        0xea -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method public e0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public f0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->A:I

    return v0
.end method

.method public g0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/l0;->E:J

    return-wide v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/l0;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6
    :cond_2
    iget v2, p0, Lcom/wufan/user/service/protobuf/l0;->e:I

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    .line 7
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8
    :cond_3
    iget-wide v2, p0, Lcom/wufan/user/service/protobuf/l0;->f:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    const/4 v6, 0x4

    .line 9
    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 10
    :cond_4
    iget-wide v2, p0, Lcom/wufan/user/service/protobuf/l0;->g:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    const/4 v6, 0x5

    .line 11
    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 12
    :cond_5
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/l0;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x6

    .line 13
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->c0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14
    :cond_6
    iget v2, p0, Lcom/wufan/user/service/protobuf/l0;->i:I

    if-eqz v2, :cond_7

    const/4 v3, 0x7

    .line 15
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 16
    :cond_7
    iget v2, p0, Lcom/wufan/user/service/protobuf/l0;->j:I

    if-eqz v2, :cond_8

    const/16 v3, 0x8

    .line 17
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 18
    :cond_8
    iget v2, p0, Lcom/wufan/user/service/protobuf/l0;->k:I

    if-eqz v2, :cond_9

    const/16 v3, 0x9

    .line 19
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 20
    :cond_9
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/l0;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    const/16 v2, 0xa

    .line 21
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->t()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22
    :cond_a
    iget v2, p0, Lcom/wufan/user/service/protobuf/l0;->m:I

    if-eqz v2, :cond_b

    const/16 v3, 0xb

    .line 23
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 24
    :cond_b
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/l0;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, 0xc

    .line 25
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->i1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26
    :cond_c
    iget v2, p0, Lcom/wufan/user/service/protobuf/l0;->o:I

    if-eqz v2, :cond_d

    const/16 v3, 0xd

    .line 27
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 28
    :cond_d
    iget v2, p0, Lcom/wufan/user/service/protobuf/l0;->p:I

    if-eqz v2, :cond_e

    const/16 v3, 0xe

    .line 29
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 30
    :cond_e
    iget v2, p0, Lcom/wufan/user/service/protobuf/l0;->q:I

    if-eqz v2, :cond_f

    const/16 v3, 0xf

    .line 31
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 32
    :cond_f
    iget-wide v2, p0, Lcom/wufan/user/service/protobuf/l0;->r:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_10

    const/16 v6, 0x10

    .line 33
    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 34
    :cond_10
    iget v2, p0, Lcom/wufan/user/service/protobuf/l0;->s:I

    if-eqz v2, :cond_11

    const/16 v3, 0x11

    .line 35
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 36
    :cond_11
    iget v2, p0, Lcom/wufan/user/service/protobuf/l0;->t:I

    if-eqz v2, :cond_12

    const/16 v3, 0x12

    .line 37
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 38
    :cond_12
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/l0;->u:Lcom/wufan/user/service/protobuf/h;

    if-eqz v2, :cond_13

    const/16 v2, 0x13

    .line 39
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->D2()Lcom/wufan/user/service/protobuf/h;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 40
    :cond_13
    iget v2, p0, Lcom/wufan/user/service/protobuf/l0;->v:I

    if-eqz v2, :cond_14

    const/16 v3, 0x14

    .line 41
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 42
    :cond_14
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/l0;->w:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    const/16 v2, 0x15

    .line 43
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->x0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 44
    :cond_15
    iget v2, p0, Lcom/wufan/user/service/protobuf/l0;->x:I

    if-eqz v2, :cond_16

    const/16 v3, 0x16

    .line 45
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 46
    :cond_16
    iget v2, p0, Lcom/wufan/user/service/protobuf/l0;->y:I

    if-eqz v2, :cond_17

    const/16 v3, 0x17

    .line 47
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 48
    :cond_17
    iget v2, p0, Lcom/wufan/user/service/protobuf/l0;->z:I

    if-eqz v2, :cond_18

    const/16 v3, 0x18

    .line 49
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 50
    :cond_18
    iget v2, p0, Lcom/wufan/user/service/protobuf/l0;->A:I

    if-eqz v2, :cond_19

    const/16 v3, 0x19

    .line 51
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 52
    :cond_19
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/l0;->B:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    const/16 v2, 0x1a

    .line 53
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 54
    :cond_1a
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/l0;->C:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    const/16 v2, 0x1b

    .line 55
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 56
    :cond_1b
    :goto_1
    iget-object v2, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    const/16 v2, 0x1c

    .line 57
    iget-object v3, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    .line 58
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    :cond_1c
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/l0;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    const/16 v1, 0x1d

    .line 60
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_1d
    iget-wide v1, p0, Lcom/wufan/user/service/protobuf/l0;->E:J

    cmp-long v3, v1, v4

    if-eqz v3, :cond_1e

    const/16 v3, 0x1e

    .line 62
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_1e
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->B:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->b:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->j:I

    return v0
.end method

.method public h1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->q:I

    return v0
.end method

.method public i1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->n:Ljava/lang/String;

    return-object v0
.end method

.method public i2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->m:I

    return v0
.end method

.method public j2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->z:I

    return v0
.end method

.method public k()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public l2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->o:I

    return v0
.end method

.method public n0(I)Lcom/wufan/user/service/protobuf/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wufan/user/service/protobuf/d;

    return-object p1
.end method

.method public o2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/l0;->g:J

    return-wide v0
.end method

.method public p2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->u:Lcom/wufan/user/service/protobuf/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public r()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/l0;->r:J

    return-wide v0
.end method

.method public r2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->x:I

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->l:Ljava/lang/String;

    return-object v0
.end method

.method public t1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->i:I

    return v0
.end method

.method public v2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->s:I

    return v0
.end method

.method public w()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->b:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 5
    :cond_1
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->e:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7
    :cond_2
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/l0;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    .line 8
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9
    :cond_3
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/l0;->g:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    .line 10
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->c0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 13
    :cond_5
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->i:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 15
    :cond_6
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->j:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17
    :cond_7
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->k:I

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    .line 20
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 21
    :cond_9
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->m:I

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 23
    :cond_a
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xc

    .line 24
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->i1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 25
    :cond_b
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->o:I

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 27
    :cond_c
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->p:I

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 29
    :cond_d
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->q:I

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 31
    :cond_e
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/l0;->r:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    const/16 v4, 0x10

    .line 32
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 33
    :cond_f
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->s:I

    if-eqz v0, :cond_10

    const/16 v1, 0x11

    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 35
    :cond_10
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->t:I

    if-eqz v0, :cond_11

    const/16 v1, 0x12

    .line 36
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 37
    :cond_11
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->u:Lcom/wufan/user/service/protobuf/h;

    if-eqz v0, :cond_12

    const/16 v0, 0x13

    .line 38
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->D2()Lcom/wufan/user/service/protobuf/h;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39
    :cond_12
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->v:I

    if-eqz v0, :cond_13

    const/16 v1, 0x14

    .line 40
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 41
    :cond_13
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/16 v0, 0x15

    .line 42
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->x0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 43
    :cond_14
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->x:I

    if-eqz v0, :cond_15

    const/16 v1, 0x16

    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 45
    :cond_15
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->y:I

    if-eqz v0, :cond_16

    const/16 v1, 0x17

    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 47
    :cond_16
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->z:I

    if-eqz v0, :cond_17

    const/16 v1, 0x18

    .line 48
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 49
    :cond_17
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->A:I

    if-eqz v0, :cond_18

    const/16 v1, 0x19

    .line 50
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 51
    :cond_18
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->B:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    const/16 v0, 0x1a

    .line 52
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 53
    :cond_19
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->C:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    const/16 v0, 0x1b

    .line 54
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_1a
    const/4 v0, 0x0

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    const/16 v1, 0x1c

    .line 56
    iget-object v4, p0, Lcom/wufan/user/service/protobuf/l0;->D:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_1b
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    const/16 v0, 0x1d

    .line 58
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 59
    :cond_1c
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/l0;->E:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1d

    const/16 v2, 0x1e

    .line 60
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_1d
    return-void
.end method

.method public x0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->w:Ljava/lang/String;

    return-object v0
.end method

.method public y0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/l0;->e:I

    return v0
.end method

.method public y1()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/l0;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
