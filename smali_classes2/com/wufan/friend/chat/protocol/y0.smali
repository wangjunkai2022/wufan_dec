.class public final Lcom/wufan/friend/chat/protocol/y0;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NotificationData.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/z0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/y0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/friend/chat/protocol/y0;",
        "Lcom/wufan/friend/chat/protocol/y0$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/z0;"
    }
.end annotation


# static fields
.field public static final A:I = 0x7

.field public static final B:I = 0x8

.field public static final C:I = 0x9

.field public static final D:I = 0xa

.field public static final E:I = 0xb

.field public static final F:I = 0xc

.field public static final G:I = 0xd

.field public static final H:I = 0xe

.field public static final I:I = 0xf

.field public static final J:I = 0x10

.field public static final K:I = 0x11

.field public static final n0:I = 0x12

.field public static final o0:I = 0x13

.field public static final p0:I = 0x14

.field private static final q0:Lcom/wufan/friend/chat/protocol/y0;

.field private static volatile r0:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/y0;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:I = 0x1

.field public static final v:I = 0x2

.field public static final w:I = 0x3

.field public static final x:I = 0x4

.field public static final y:I = 0x5

.field public static final z:I = 0x6


# instance fields
.field private a:J

.field private b:J

.field private c:Z

.field private d:Lcom/wufan/friend/chat/protocol/a;

.field private e:Lcom/wufan/friend/chat/protocol/p;

.field private f:Lcom/wufan/friend/chat/protocol/h1;

.field private g:Lcom/wufan/friend/chat/protocol/g0;

.field private h:Lcom/wufan/friend/chat/protocol/x;

.field private i:Lcom/wufan/friend/chat/protocol/v;

.field private j:Lcom/wufan/friend/chat/protocol/l0;

.field private k:Lcom/wufan/friend/chat/protocol/g;

.field private l:Lcom/wufan/friend/chat/protocol/m;

.field private m:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

.field private n:Lcom/wufan/friend/chat/protocol/n0;

.field private o:Lcom/wufan/friend/chat/protocol/t;

.field private p:Lcom/wufan/friend/chat/protocol/q1;

.field private q:Lcom/wufan/friend/chat/protocol/e;

.field private r:Lcom/wufan/friend/chat/protocol/o1;

.field private s:Lcom/wufan/friend/chat/protocol/z;

.field private t:Lcom/wufan/friend/chat/protocol/f1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/y0;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/y0;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/y0;->q0:Lcom/wufan/friend/chat/protocol/y0;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic A3(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/y0;->I4()V

    return-void
.end method

.method private A4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->g:Lcom/wufan/friend/chat/protocol/g0;

    return-void
.end method

.method private A5(Lcom/wufan/friend/chat/protocol/x$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/x;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->h:Lcom/wufan/friend/chat/protocol/x;

    return-void
.end method

.method static synthetic B3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/m$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->s5(Lcom/wufan/friend/chat/protocol/m$b;)V

    return-void
.end method

.method private B4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->j:Lcom/wufan/friend/chat/protocol/l0;

    return-void
.end method

.method private B5(Lcom/wufan/friend/chat/protocol/x;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->h:Lcom/wufan/friend/chat/protocol/x;

    return-void
.end method

.method static synthetic C3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/m;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->M4(Lcom/wufan/friend/chat/protocol/m;)V

    return-void
.end method

.method private C4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->n:Lcom/wufan/friend/chat/protocol/n0;

    return-void
.end method

.method private C5(Lcom/wufan/friend/chat/protocol/z$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/z;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->s:Lcom/wufan/friend/chat/protocol/z;

    return-void
.end method

.method static synthetic D3(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/y0;->s4()V

    return-void
.end method

.method private D4()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/y0;->a:J

    return-void
.end method

.method private D5(Lcom/wufan/friend/chat/protocol/z;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->s:Lcom/wufan/friend/chat/protocol/z;

    return-void
.end method

.method static synthetic E3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->x5(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;)V

    return-void
.end method

.method private E4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->t:Lcom/wufan/friend/chat/protocol/f1;

    return-void
.end method

.method private E5(Lcom/wufan/friend/chat/protocol/v$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/v;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->i:Lcom/wufan/friend/chat/protocol/v;

    return-void
.end method

.method static synthetic F3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->w5(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;)V

    return-void
.end method

.method private F4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->f:Lcom/wufan/friend/chat/protocol/h1;

    return-void
.end method

.method private F5(Lcom/wufan/friend/chat/protocol/v;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->i:Lcom/wufan/friend/chat/protocol/v;

    return-void
.end method

.method static synthetic G3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->O4(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;)V

    return-void
.end method

.method private G4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->r:Lcom/wufan/friend/chat/protocol/o1;

    return-void
.end method

.method private G5(Lcom/wufan/friend/chat/protocol/a$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->d:Lcom/wufan/friend/chat/protocol/a;

    return-void
.end method

.method static synthetic H3(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/y0;->u4()V

    return-void
.end method

.method private H4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->p:Lcom/wufan/friend/chat/protocol/q1;

    return-void
.end method

.method private H5(Lcom/wufan/friend/chat/protocol/a;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->d:Lcom/wufan/friend/chat/protocol/a;

    return-void
.end method

.method static synthetic I3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/n0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->N5(Lcom/wufan/friend/chat/protocol/n0;)V

    return-void
.end method

.method private I4()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/y0;->b:J

    return-void
.end method

.method private I5(Lcom/wufan/friend/chat/protocol/g0$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/g0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->g:Lcom/wufan/friend/chat/protocol/g0;

    return-void
.end method

.method static synthetic J3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/n0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->M5(Lcom/wufan/friend/chat/protocol/n0$b;)V

    return-void
.end method

.method public static J4()Lcom/wufan/friend/chat/protocol/y0;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/y0;->q0:Lcom/wufan/friend/chat/protocol/y0;

    return-object v0
.end method

.method private J5(Lcom/wufan/friend/chat/protocol/g0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->g:Lcom/wufan/friend/chat/protocol/g0;

    return-void
.end method

.method static synthetic K3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/n0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->W4(Lcom/wufan/friend/chat/protocol/n0;)V

    return-void
.end method

.method private K4(Lcom/wufan/friend/chat/protocol/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->q:Lcom/wufan/friend/chat/protocol/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/e;->C3()Lcom/wufan/friend/chat/protocol/e;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->q:Lcom/wufan/friend/chat/protocol/e;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/e;->I3(Lcom/wufan/friend/chat/protocol/e;)Lcom/wufan/friend/chat/protocol/e$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/e$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/e;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->q:Lcom/wufan/friend/chat/protocol/e;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->q:Lcom/wufan/friend/chat/protocol/e;

    :goto_0
    return-void
.end method

.method private K5(Lcom/wufan/friend/chat/protocol/l0$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/l0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->j:Lcom/wufan/friend/chat/protocol/l0;

    return-void
.end method

.method static synthetic L3(Lcom/wufan/friend/chat/protocol/y0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->n5(Z)V

    return-void
.end method

.method private L4(Lcom/wufan/friend/chat/protocol/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->k:Lcom/wufan/friend/chat/protocol/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/g;->m3()Lcom/wufan/friend/chat/protocol/g;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->k:Lcom/wufan/friend/chat/protocol/g;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/g;->q3(Lcom/wufan/friend/chat/protocol/g;)Lcom/wufan/friend/chat/protocol/g$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/g$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/g;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->k:Lcom/wufan/friend/chat/protocol/g;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->k:Lcom/wufan/friend/chat/protocol/g;

    :goto_0
    return-void
.end method

.method private L5(Lcom/wufan/friend/chat/protocol/l0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->j:Lcom/wufan/friend/chat/protocol/l0;

    return-void
.end method

.method static synthetic M3(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/y0;->C4()V

    return-void
.end method

.method private M4(Lcom/wufan/friend/chat/protocol/m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->l:Lcom/wufan/friend/chat/protocol/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/m;->d3()Lcom/wufan/friend/chat/protocol/m;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->l:Lcom/wufan/friend/chat/protocol/m;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/m;->g3(Lcom/wufan/friend/chat/protocol/m;)Lcom/wufan/friend/chat/protocol/m$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/m$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/m;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->l:Lcom/wufan/friend/chat/protocol/m;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->l:Lcom/wufan/friend/chat/protocol/m;

    :goto_0
    return-void
.end method

.method private M5(Lcom/wufan/friend/chat/protocol/n0$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/n0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->n:Lcom/wufan/friend/chat/protocol/n0;

    return-void
.end method

.method static synthetic N3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->z5(Lcom/wufan/friend/chat/protocol/t;)V

    return-void
.end method

.method private N4(Lcom/wufan/friend/chat/protocol/p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->e:Lcom/wufan/friend/chat/protocol/p;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/p;->T2()Lcom/wufan/friend/chat/protocol/p;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->e:Lcom/wufan/friend/chat/protocol/p;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/p;->V2(Lcom/wufan/friend/chat/protocol/p;)Lcom/wufan/friend/chat/protocol/p$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/p$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/p;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->e:Lcom/wufan/friend/chat/protocol/p;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->e:Lcom/wufan/friend/chat/protocol/p;

    :goto_0
    return-void
.end method

.method private N5(Lcom/wufan/friend/chat/protocol/n0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->n:Lcom/wufan/friend/chat/protocol/n0;

    return-void
.end method

.method static synthetic O3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/t$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->y5(Lcom/wufan/friend/chat/protocol/t$b;)V

    return-void
.end method

.method private O4(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->m:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->b3()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->m:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->d3(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;)Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->m:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->m:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    :goto_0
    return-void
.end method

.method private O5(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/y0;->a:J

    return-void
.end method

.method static synthetic P3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->P4(Lcom/wufan/friend/chat/protocol/t;)V

    return-void
.end method

.method private P4(Lcom/wufan/friend/chat/protocol/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->o:Lcom/wufan/friend/chat/protocol/t;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t;->h3()Lcom/wufan/friend/chat/protocol/t;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->o:Lcom/wufan/friend/chat/protocol/t;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/t;->l3(Lcom/wufan/friend/chat/protocol/t;)Lcom/wufan/friend/chat/protocol/t$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->o:Lcom/wufan/friend/chat/protocol/t;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->o:Lcom/wufan/friend/chat/protocol/t;

    :goto_0
    return-void
.end method

.method private P5(Lcom/wufan/friend/chat/protocol/f1$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/f1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->t:Lcom/wufan/friend/chat/protocol/f1;

    return-void
.end method

.method static synthetic Q3(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/y0;->v4()V

    return-void
.end method

.method private Q4(Lcom/wufan/friend/chat/protocol/x;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->h:Lcom/wufan/friend/chat/protocol/x;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/x;->g3()Lcom/wufan/friend/chat/protocol/x;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->h:Lcom/wufan/friend/chat/protocol/x;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/x;->k3(Lcom/wufan/friend/chat/protocol/x;)Lcom/wufan/friend/chat/protocol/x$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/x$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/x;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->h:Lcom/wufan/friend/chat/protocol/x;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->h:Lcom/wufan/friend/chat/protocol/x;

    :goto_0
    return-void
.end method

.method private Q5(Lcom/wufan/friend/chat/protocol/f1;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->t:Lcom/wufan/friend/chat/protocol/f1;

    return-void
.end method

.method static synthetic R3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/q1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->W5(Lcom/wufan/friend/chat/protocol/q1;)V

    return-void
.end method

.method private R4(Lcom/wufan/friend/chat/protocol/z;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->s:Lcom/wufan/friend/chat/protocol/z;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/z;->W2()Lcom/wufan/friend/chat/protocol/z;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->s:Lcom/wufan/friend/chat/protocol/z;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/z;->Y2(Lcom/wufan/friend/chat/protocol/z;)Lcom/wufan/friend/chat/protocol/z$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/z$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/z;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->s:Lcom/wufan/friend/chat/protocol/z;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->s:Lcom/wufan/friend/chat/protocol/z;

    :goto_0
    return-void
.end method

.method private R5(Lcom/wufan/friend/chat/protocol/h1$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/h1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->f:Lcom/wufan/friend/chat/protocol/h1;

    return-void
.end method

.method static synthetic S2()Lcom/wufan/friend/chat/protocol/y0;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/y0;->q0:Lcom/wufan/friend/chat/protocol/y0;

    return-object v0
.end method

.method static synthetic S3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/q1$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->V5(Lcom/wufan/friend/chat/protocol/q1$b;)V

    return-void
.end method

.method private S4(Lcom/wufan/friend/chat/protocol/v;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->i:Lcom/wufan/friend/chat/protocol/v;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/v;->c3()Lcom/wufan/friend/chat/protocol/v;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->i:Lcom/wufan/friend/chat/protocol/v;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/v;->g3(Lcom/wufan/friend/chat/protocol/v;)Lcom/wufan/friend/chat/protocol/v$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/v$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/v;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->i:Lcom/wufan/friend/chat/protocol/v;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->i:Lcom/wufan/friend/chat/protocol/v;

    :goto_0
    return-void
.end method

.method private S5(Lcom/wufan/friend/chat/protocol/h1;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->f:Lcom/wufan/friend/chat/protocol/h1;

    return-void
.end method

.method static synthetic T2(Lcom/wufan/friend/chat/protocol/y0;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/y0;->O5(J)V

    return-void
.end method

.method static synthetic T3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/q1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->a5(Lcom/wufan/friend/chat/protocol/q1;)V

    return-void
.end method

.method private T4(Lcom/wufan/friend/chat/protocol/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->d:Lcom/wufan/friend/chat/protocol/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/a;->n3()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->d:Lcom/wufan/friend/chat/protocol/a;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/a;->p3(Lcom/wufan/friend/chat/protocol/a;)Lcom/wufan/friend/chat/protocol/a$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->d:Lcom/wufan/friend/chat/protocol/a;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->d:Lcom/wufan/friend/chat/protocol/a;

    :goto_0
    return-void
.end method

.method private T5(Lcom/wufan/friend/chat/protocol/o1$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/o1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->r:Lcom/wufan/friend/chat/protocol/o1;

    return-void
.end method

.method static synthetic U2(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/y0;->z4()V

    return-void
.end method

.method static synthetic U3(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/y0;->H4()V

    return-void
.end method

.method private U4(Lcom/wufan/friend/chat/protocol/g0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->g:Lcom/wufan/friend/chat/protocol/g0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/g0;->y3()Lcom/wufan/friend/chat/protocol/g0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->g:Lcom/wufan/friend/chat/protocol/g0;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/g0;->A3(Lcom/wufan/friend/chat/protocol/g0;)Lcom/wufan/friend/chat/protocol/g0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/g0$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/g0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->g:Lcom/wufan/friend/chat/protocol/g0;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->g:Lcom/wufan/friend/chat/protocol/g0;

    :goto_0
    return-void
.end method

.method private U5(Lcom/wufan/friend/chat/protocol/o1;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->r:Lcom/wufan/friend/chat/protocol/o1;

    return-void
.end method

.method static synthetic V2(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->v5(Lcom/wufan/friend/chat/protocol/p;)V

    return-void
.end method

.method static synthetic V3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->p5(Lcom/wufan/friend/chat/protocol/e;)V

    return-void
.end method

.method private V4(Lcom/wufan/friend/chat/protocol/l0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->j:Lcom/wufan/friend/chat/protocol/l0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/l0;->X2()Lcom/wufan/friend/chat/protocol/l0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->j:Lcom/wufan/friend/chat/protocol/l0;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/l0;->Z2(Lcom/wufan/friend/chat/protocol/l0;)Lcom/wufan/friend/chat/protocol/l0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/l0$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/l0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->j:Lcom/wufan/friend/chat/protocol/l0;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->j:Lcom/wufan/friend/chat/protocol/l0;

    :goto_0
    return-void
.end method

.method private V5(Lcom/wufan/friend/chat/protocol/q1$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/q1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->p:Lcom/wufan/friend/chat/protocol/q1;

    return-void
.end method

.method static synthetic W2(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/p$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->u5(Lcom/wufan/friend/chat/protocol/p$b;)V

    return-void
.end method

.method static synthetic W3(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/y0;->p4()V

    return-void
.end method

.method private W4(Lcom/wufan/friend/chat/protocol/n0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->n:Lcom/wufan/friend/chat/protocol/n0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/n0;->Z2()Lcom/wufan/friend/chat/protocol/n0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->n:Lcom/wufan/friend/chat/protocol/n0;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/n0;->b3(Lcom/wufan/friend/chat/protocol/n0;)Lcom/wufan/friend/chat/protocol/n0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/n0$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/n0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->n:Lcom/wufan/friend/chat/protocol/n0;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->n:Lcom/wufan/friend/chat/protocol/n0;

    :goto_0
    return-void
.end method

.method private W5(Lcom/wufan/friend/chat/protocol/q1;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->p:Lcom/wufan/friend/chat/protocol/q1;

    return-void
.end method

.method static synthetic X2(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->N4(Lcom/wufan/friend/chat/protocol/p;)V

    return-void
.end method

.method static synthetic X3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/e$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->o5(Lcom/wufan/friend/chat/protocol/e$b;)V

    return-void
.end method

.method private X4(Lcom/wufan/friend/chat/protocol/f1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->t:Lcom/wufan/friend/chat/protocol/f1;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/f1;->Y2()Lcom/wufan/friend/chat/protocol/f1;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->t:Lcom/wufan/friend/chat/protocol/f1;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/f1;->b3(Lcom/wufan/friend/chat/protocol/f1;)Lcom/wufan/friend/chat/protocol/f1$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/f1$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/f1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->t:Lcom/wufan/friend/chat/protocol/f1;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->t:Lcom/wufan/friend/chat/protocol/f1;

    :goto_0
    return-void
.end method

.method private X5(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/y0;->b:J

    return-void
.end method

.method static synthetic Y2(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/y0;->t4()V

    return-void
.end method

.method static synthetic Y3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->K4(Lcom/wufan/friend/chat/protocol/e;)V

    return-void
.end method

.method private Y4(Lcom/wufan/friend/chat/protocol/h1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->f:Lcom/wufan/friend/chat/protocol/h1;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/h1;->T2()Lcom/wufan/friend/chat/protocol/h1;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->f:Lcom/wufan/friend/chat/protocol/h1;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/h1;->V2(Lcom/wufan/friend/chat/protocol/h1;)Lcom/wufan/friend/chat/protocol/h1$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/h1$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/h1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->f:Lcom/wufan/friend/chat/protocol/h1;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->f:Lcom/wufan/friend/chat/protocol/h1;

    :goto_0
    return-void
.end method

.method static synthetic Z2(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/h1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->S5(Lcom/wufan/friend/chat/protocol/h1;)V

    return-void
.end method

.method static synthetic Z3(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/y0;->q4()V

    return-void
.end method

.method private Z4(Lcom/wufan/friend/chat/protocol/o1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->r:Lcom/wufan/friend/chat/protocol/o1;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/o1;->g3()Lcom/wufan/friend/chat/protocol/o1;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->r:Lcom/wufan/friend/chat/protocol/o1;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/o1;->k3(Lcom/wufan/friend/chat/protocol/o1;)Lcom/wufan/friend/chat/protocol/o1$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/o1$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/o1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->r:Lcom/wufan/friend/chat/protocol/o1;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->r:Lcom/wufan/friend/chat/protocol/o1;

    :goto_0
    return-void
.end method

.method static synthetic a3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/h1$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->R5(Lcom/wufan/friend/chat/protocol/h1$b;)V

    return-void
.end method

.method static synthetic a4(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/o1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->U5(Lcom/wufan/friend/chat/protocol/o1;)V

    return-void
.end method

.method private a5(Lcom/wufan/friend/chat/protocol/q1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->p:Lcom/wufan/friend/chat/protocol/q1;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/q1;->b3()Lcom/wufan/friend/chat/protocol/q1;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->p:Lcom/wufan/friend/chat/protocol/q1;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/q1;->e3(Lcom/wufan/friend/chat/protocol/q1;)Lcom/wufan/friend/chat/protocol/q1$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/q1$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/q1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->p:Lcom/wufan/friend/chat/protocol/q1;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->p:Lcom/wufan/friend/chat/protocol/q1;

    :goto_0
    return-void
.end method

.method static synthetic b3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/h1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->Y4(Lcom/wufan/friend/chat/protocol/h1;)V

    return-void
.end method

.method static synthetic b4(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/o1$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->T5(Lcom/wufan/friend/chat/protocol/o1$b;)V

    return-void
.end method

.method public static b5()Lcom/wufan/friend/chat/protocol/y0$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/y0;->q0:Lcom/wufan/friend/chat/protocol/y0;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/y0$b;

    return-object v0
.end method

.method static synthetic c3(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/y0;->F4()V

    return-void
.end method

.method static synthetic c4(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/o1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->Z4(Lcom/wufan/friend/chat/protocol/o1;)V

    return-void
.end method

.method public static c5(Lcom/wufan/friend/chat/protocol/y0;)Lcom/wufan/friend/chat/protocol/y0$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/y0;->q0:Lcom/wufan/friend/chat/protocol/y0;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/y0$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/y0$b;

    return-object p0
.end method

.method static synthetic d3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->J5(Lcom/wufan/friend/chat/protocol/g0;)V

    return-void
.end method

.method static synthetic d4(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/y0;->G4()V

    return-void
.end method

.method public static d5(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/y0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/y0;->q0:Lcom/wufan/friend/chat/protocol/y0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/y0;

    return-object p0
.end method

.method static synthetic e3(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/y0;->D4()V

    return-void
.end method

.method static synthetic e4(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/z;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->D5(Lcom/wufan/friend/chat/protocol/z;)V

    return-void
.end method

.method public static e5(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/y0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/y0;->q0:Lcom/wufan/friend/chat/protocol/y0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/y0;

    return-object p0
.end method

.method static synthetic f3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/g0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->I5(Lcom/wufan/friend/chat/protocol/g0$b;)V

    return-void
.end method

.method static synthetic f4(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/z$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->C5(Lcom/wufan/friend/chat/protocol/z$b;)V

    return-void
.end method

.method public static f5(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/y0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/y0;->q0:Lcom/wufan/friend/chat/protocol/y0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/y0;

    return-object p0
.end method

.method static synthetic g3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->U4(Lcom/wufan/friend/chat/protocol/g0;)V

    return-void
.end method

.method static synthetic g4(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/z;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->R4(Lcom/wufan/friend/chat/protocol/z;)V

    return-void
.end method

.method public static g5(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/y0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/y0;->q0:Lcom/wufan/friend/chat/protocol/y0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/y0;

    return-object p0
.end method

.method static synthetic h3(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/y0;->A4()V

    return-void
.end method

.method static synthetic h4(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->H5(Lcom/wufan/friend/chat/protocol/a;)V

    return-void
.end method

.method public static h5(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/y0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/y0;->q0:Lcom/wufan/friend/chat/protocol/y0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/y0;

    return-object p0
.end method

.method static synthetic i3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->B5(Lcom/wufan/friend/chat/protocol/x;)V

    return-void
.end method

.method static synthetic i4(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/y0;->x4()V

    return-void
.end method

.method public static i5(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/y0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/y0;->q0:Lcom/wufan/friend/chat/protocol/y0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/y0;

    return-object p0
.end method

.method static synthetic j3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/x$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->A5(Lcom/wufan/friend/chat/protocol/x$b;)V

    return-void
.end method

.method static synthetic j4(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/f1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->Q5(Lcom/wufan/friend/chat/protocol/f1;)V

    return-void
.end method

.method public static j5(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/y0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/y0;->q0:Lcom/wufan/friend/chat/protocol/y0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/y0;

    return-object p0
.end method

.method static synthetic k3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->Q4(Lcom/wufan/friend/chat/protocol/x;)V

    return-void
.end method

.method static synthetic k4(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/f1$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->P5(Lcom/wufan/friend/chat/protocol/f1$b;)V

    return-void
.end method

.method public static k5(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/y0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/y0;->q0:Lcom/wufan/friend/chat/protocol/y0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/y0;

    return-object p0
.end method

.method static synthetic l3(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/y0;->w4()V

    return-void
.end method

.method static synthetic l4(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/f1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->X4(Lcom/wufan/friend/chat/protocol/f1;)V

    return-void
.end method

.method public static l5([B)Lcom/wufan/friend/chat/protocol/y0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/y0;->q0:Lcom/wufan/friend/chat/protocol/y0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/y0;

    return-object p0
.end method

.method static synthetic m3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/v;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->F5(Lcom/wufan/friend/chat/protocol/v;)V

    return-void
.end method

.method static synthetic m4(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/y0;->E4()V

    return-void
.end method

.method public static m5([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/y0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/y0;->q0:Lcom/wufan/friend/chat/protocol/y0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/y0;

    return-object p0
.end method

.method static synthetic n3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/v$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->E5(Lcom/wufan/friend/chat/protocol/v$b;)V

    return-void
.end method

.method static synthetic n4(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->G5(Lcom/wufan/friend/chat/protocol/a$b;)V

    return-void
.end method

.method private n5(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/y0;->c:Z

    return-void
.end method

.method static synthetic o3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/v;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->S4(Lcom/wufan/friend/chat/protocol/v;)V

    return-void
.end method

.method static synthetic o4(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->T4(Lcom/wufan/friend/chat/protocol/a;)V

    return-void
.end method

.method private o5(Lcom/wufan/friend/chat/protocol/e$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/e;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->q:Lcom/wufan/friend/chat/protocol/e;

    return-void
.end method

.method static synthetic p3(Lcom/wufan/friend/chat/protocol/y0;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/y0;->X5(J)V

    return-void
.end method

.method private p4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/wufan/friend/chat/protocol/y0;->c:Z

    return-void
.end method

.method private p5(Lcom/wufan/friend/chat/protocol/e;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->q:Lcom/wufan/friend/chat/protocol/e;

    return-void
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/y0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/y0;->q0:Lcom/wufan/friend/chat/protocol/y0;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q3(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/y0;->y4()V

    return-void
.end method

.method private q4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->q:Lcom/wufan/friend/chat/protocol/e;

    return-void
.end method

.method private q5(Lcom/wufan/friend/chat/protocol/g$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/g;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->k:Lcom/wufan/friend/chat/protocol/g;

    return-void
.end method

.method static synthetic r3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->L5(Lcom/wufan/friend/chat/protocol/l0;)V

    return-void
.end method

.method private r4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->k:Lcom/wufan/friend/chat/protocol/g;

    return-void
.end method

.method private r5(Lcom/wufan/friend/chat/protocol/g;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->k:Lcom/wufan/friend/chat/protocol/g;

    return-void
.end method

.method static synthetic s3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/l0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->K5(Lcom/wufan/friend/chat/protocol/l0$b;)V

    return-void
.end method

.method private s4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->l:Lcom/wufan/friend/chat/protocol/m;

    return-void
.end method

.method private s5(Lcom/wufan/friend/chat/protocol/m$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/m;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->l:Lcom/wufan/friend/chat/protocol/m;

    return-void
.end method

.method static synthetic t3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->V4(Lcom/wufan/friend/chat/protocol/l0;)V

    return-void
.end method

.method private t4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->e:Lcom/wufan/friend/chat/protocol/p;

    return-void
.end method

.method private t5(Lcom/wufan/friend/chat/protocol/m;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->l:Lcom/wufan/friend/chat/protocol/m;

    return-void
.end method

.method static synthetic u3(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/y0;->B4()V

    return-void
.end method

.method private u4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->m:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    return-void
.end method

.method private u5(Lcom/wufan/friend/chat/protocol/p$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/p;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->e:Lcom/wufan/friend/chat/protocol/p;

    return-void
.end method

.method static synthetic v3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->r5(Lcom/wufan/friend/chat/protocol/g;)V

    return-void
.end method

.method private v4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->o:Lcom/wufan/friend/chat/protocol/t;

    return-void
.end method

.method private v5(Lcom/wufan/friend/chat/protocol/p;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->e:Lcom/wufan/friend/chat/protocol/p;

    return-void
.end method

.method static synthetic w3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/g$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->q5(Lcom/wufan/friend/chat/protocol/g$b;)V

    return-void
.end method

.method private w4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->h:Lcom/wufan/friend/chat/protocol/x;

    return-void
.end method

.method private w5(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->m:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    return-void
.end method

.method static synthetic x3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->L4(Lcom/wufan/friend/chat/protocol/g;)V

    return-void
.end method

.method private x4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->s:Lcom/wufan/friend/chat/protocol/z;

    return-void
.end method

.method private x5(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->m:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    return-void
.end method

.method static synthetic y3(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/y0;->r4()V

    return-void
.end method

.method private y4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->i:Lcom/wufan/friend/chat/protocol/v;

    return-void
.end method

.method private y5(Lcom/wufan/friend/chat/protocol/t$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->o:Lcom/wufan/friend/chat/protocol/t;

    return-void
.end method

.method static synthetic z3(Lcom/wufan/friend/chat/protocol/y0;Lcom/wufan/friend/chat/protocol/m;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/y0;->t5(Lcom/wufan/friend/chat/protocol/m;)V

    return-void
.end method

.method private z4()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->d:Lcom/wufan/friend/chat/protocol/a;

    return-void
.end method

.method private z5(Lcom/wufan/friend/chat/protocol/t;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->o:Lcom/wufan/friend/chat/protocol/t;

    return-void
.end method


# virtual methods
.method public A0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->k:Lcom/wufan/friend/chat/protocol/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->e:Lcom/wufan/friend/chat/protocol/p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->r:Lcom/wufan/friend/chat/protocol/o1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->l:Lcom/wufan/friend/chat/protocol/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->p:Lcom/wufan/friend/chat/protocol/q1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public K0()Lcom/wufan/friend/chat/protocol/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->i:Lcom/wufan/friend/chat/protocol/v;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/v;->c3()Lcom/wufan/friend/chat/protocol/v;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public K1()Lcom/wufan/friend/chat/protocol/q1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->p:Lcom/wufan/friend/chat/protocol/q1;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/q1;->b3()Lcom/wufan/friend/chat/protocol/q1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public M()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/y0;->b:J

    return-wide v0
.end method

.method public O()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/y0;->a:J

    return-wide v0
.end method

.method public O0()Lcom/wufan/friend/chat/protocol/f1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->t:Lcom/wufan/friend/chat/protocol/f1;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/f1;->Y2()Lcom/wufan/friend/chat/protocol/f1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public Q1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->q:Lcom/wufan/friend/chat/protocol/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public R()Lcom/wufan/friend/chat/protocol/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->e:Lcom/wufan/friend/chat/protocol/p;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/p;->T2()Lcom/wufan/friend/chat/protocol/p;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public R2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->m:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public U()Lcom/wufan/friend/chat/protocol/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->d:Lcom/wufan/friend/chat/protocol/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/a;->n3()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public U1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->t:Lcom/wufan/friend/chat/protocol/f1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public X1()Lcom/wufan/friend/chat/protocol/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->q:Lcom/wufan/friend/chat/protocol/e;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/e;->C3()Lcom/wufan/friend/chat/protocol/e;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public Y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->j:Lcom/wufan/friend/chat/protocol/l0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Y0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->f:Lcom/wufan/friend/chat/protocol/h1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Y1()Lcom/wufan/friend/chat/protocol/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->j:Lcom/wufan/friend/chat/protocol/l0;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/l0;->X2()Lcom/wufan/friend/chat/protocol/l0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a2()Lcom/wufan/friend/chat/protocol/n0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->n:Lcom/wufan/friend/chat/protocol/n0;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/n0;->Z2()Lcom/wufan/friend/chat/protocol/n0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b1()Lcom/wufan/friend/chat/protocol/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->o:Lcom/wufan/friend/chat/protocol/t;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/t;->h3()Lcom/wufan/friend/chat/protocol/t;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/y0$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, Lcom/wufan/friend/chat/protocol/y0;->r0:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/friend/chat/protocol/y0;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/friend/chat/protocol/y0;->r0:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/friend/chat/protocol/y0;->q0:Lcom/wufan/friend/chat/protocol/y0;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/friend/chat/protocol/y0;->r0:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/y0;->r0:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v0, :cond_14

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_14

    .line 12
    :sswitch_0
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->t:Lcom/wufan/friend/chat/protocol/f1;

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/f1$b;

    goto :goto_2

    :cond_3
    move-object p1, v2

    .line 14
    :goto_2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/f1;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/f1;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/y0;->t:Lcom/wufan/friend/chat/protocol/f1;

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/f1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->t:Lcom/wufan/friend/chat/protocol/f1;

    goto :goto_1

    .line 17
    :sswitch_1
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->s:Lcom/wufan/friend/chat/protocol/z;

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/z$b;

    goto :goto_3

    :cond_4
    move-object p1, v2

    .line 19
    :goto_3
    invoke-static {}, Lcom/wufan/friend/chat/protocol/z;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/z;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/y0;->s:Lcom/wufan/friend/chat/protocol/z;

    if-eqz p1, :cond_2

    .line 20
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/z;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->s:Lcom/wufan/friend/chat/protocol/z;

    goto :goto_1

    .line 22
    :sswitch_2
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->r:Lcom/wufan/friend/chat/protocol/o1;

    if-eqz p1, :cond_5

    .line 23
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/o1$b;

    goto :goto_4

    :cond_5
    move-object p1, v2

    .line 24
    :goto_4
    invoke-static {}, Lcom/wufan/friend/chat/protocol/o1;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/o1;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/y0;->r:Lcom/wufan/friend/chat/protocol/o1;

    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/o1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->r:Lcom/wufan/friend/chat/protocol/o1;

    goto/16 :goto_1

    .line 27
    :sswitch_3
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->q:Lcom/wufan/friend/chat/protocol/e;

    if-eqz p1, :cond_6

    .line 28
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/e$b;

    goto :goto_5

    :cond_6
    move-object p1, v2

    .line 29
    :goto_5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/e;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/e;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/y0;->q:Lcom/wufan/friend/chat/protocol/e;

    if-eqz p1, :cond_2

    .line 30
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 31
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/e;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->q:Lcom/wufan/friend/chat/protocol/e;

    goto/16 :goto_1

    .line 32
    :sswitch_4
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->p:Lcom/wufan/friend/chat/protocol/q1;

    if-eqz p1, :cond_7

    .line 33
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/q1$b;

    goto :goto_6

    :cond_7
    move-object p1, v2

    .line 34
    :goto_6
    invoke-static {}, Lcom/wufan/friend/chat/protocol/q1;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/q1;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/y0;->p:Lcom/wufan/friend/chat/protocol/q1;

    if-eqz p1, :cond_2

    .line 35
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 36
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/q1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->p:Lcom/wufan/friend/chat/protocol/q1;

    goto/16 :goto_1

    .line 37
    :sswitch_5
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->o:Lcom/wufan/friend/chat/protocol/t;

    if-eqz p1, :cond_8

    .line 38
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t$b;

    goto :goto_7

    :cond_8
    move-object p1, v2

    .line 39
    :goto_7
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/t;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/y0;->o:Lcom/wufan/friend/chat/protocol/t;

    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 41
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->o:Lcom/wufan/friend/chat/protocol/t;

    goto/16 :goto_1

    .line 42
    :sswitch_6
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->n:Lcom/wufan/friend/chat/protocol/n0;

    if-eqz p1, :cond_9

    .line 43
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/n0$b;

    goto :goto_8

    :cond_9
    move-object p1, v2

    .line 44
    :goto_8
    invoke-static {}, Lcom/wufan/friend/chat/protocol/n0;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/n0;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/y0;->n:Lcom/wufan/friend/chat/protocol/n0;

    if-eqz p1, :cond_2

    .line 45
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 46
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/n0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->n:Lcom/wufan/friend/chat/protocol/n0;

    goto/16 :goto_1

    .line 47
    :sswitch_7
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->m:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    if-eqz p1, :cond_a

    .line 48
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;

    goto :goto_9

    :cond_a
    move-object p1, v2

    .line 49
    :goto_9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/y0;->m:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    if-eqz p1, :cond_2

    .line 50
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 51
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->m:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    goto/16 :goto_1

    .line 52
    :sswitch_8
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->l:Lcom/wufan/friend/chat/protocol/m;

    if-eqz p1, :cond_b

    .line 53
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/m$b;

    goto :goto_a

    :cond_b
    move-object p1, v2

    .line 54
    :goto_a
    invoke-static {}, Lcom/wufan/friend/chat/protocol/m;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/m;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/y0;->l:Lcom/wufan/friend/chat/protocol/m;

    if-eqz p1, :cond_2

    .line 55
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 56
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/m;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->l:Lcom/wufan/friend/chat/protocol/m;

    goto/16 :goto_1

    .line 57
    :sswitch_9
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->k:Lcom/wufan/friend/chat/protocol/g;

    if-eqz p1, :cond_c

    .line 58
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/g$b;

    goto :goto_b

    :cond_c
    move-object p1, v2

    .line 59
    :goto_b
    invoke-static {}, Lcom/wufan/friend/chat/protocol/g;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/g;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/y0;->k:Lcom/wufan/friend/chat/protocol/g;

    if-eqz p1, :cond_2

    .line 60
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 61
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/g;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->k:Lcom/wufan/friend/chat/protocol/g;

    goto/16 :goto_1

    .line 62
    :sswitch_a
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->j:Lcom/wufan/friend/chat/protocol/l0;

    if-eqz p1, :cond_d

    .line 63
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/l0$b;

    goto :goto_c

    :cond_d
    move-object p1, v2

    .line 64
    :goto_c
    invoke-static {}, Lcom/wufan/friend/chat/protocol/l0;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/l0;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/y0;->j:Lcom/wufan/friend/chat/protocol/l0;

    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 66
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/l0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->j:Lcom/wufan/friend/chat/protocol/l0;

    goto/16 :goto_1

    .line 67
    :sswitch_b
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->i:Lcom/wufan/friend/chat/protocol/v;

    if-eqz p1, :cond_e

    .line 68
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/v$b;

    goto :goto_d

    :cond_e
    move-object p1, v2

    .line 69
    :goto_d
    invoke-static {}, Lcom/wufan/friend/chat/protocol/v;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/v;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/y0;->i:Lcom/wufan/friend/chat/protocol/v;

    if-eqz p1, :cond_2

    .line 70
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 71
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/v;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->i:Lcom/wufan/friend/chat/protocol/v;

    goto/16 :goto_1

    .line 72
    :sswitch_c
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->h:Lcom/wufan/friend/chat/protocol/x;

    if-eqz p1, :cond_f

    .line 73
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/x$b;

    goto :goto_e

    :cond_f
    move-object p1, v2

    .line 74
    :goto_e
    invoke-static {}, Lcom/wufan/friend/chat/protocol/x;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/x;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/y0;->h:Lcom/wufan/friend/chat/protocol/x;

    if-eqz p1, :cond_2

    .line 75
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 76
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/x;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->h:Lcom/wufan/friend/chat/protocol/x;

    goto/16 :goto_1

    .line 77
    :sswitch_d
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->g:Lcom/wufan/friend/chat/protocol/g0;

    if-eqz p1, :cond_10

    .line 78
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/g0$b;

    goto :goto_f

    :cond_10
    move-object p1, v2

    .line 79
    :goto_f
    invoke-static {}, Lcom/wufan/friend/chat/protocol/g0;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/g0;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/y0;->g:Lcom/wufan/friend/chat/protocol/g0;

    if-eqz p1, :cond_2

    .line 80
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 81
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/g0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->g:Lcom/wufan/friend/chat/protocol/g0;

    goto/16 :goto_1

    .line 82
    :sswitch_e
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->f:Lcom/wufan/friend/chat/protocol/h1;

    if-eqz p1, :cond_11

    .line 83
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/h1$b;

    goto :goto_10

    :cond_11
    move-object p1, v2

    .line 84
    :goto_10
    invoke-static {}, Lcom/wufan/friend/chat/protocol/h1;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/h1;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/y0;->f:Lcom/wufan/friend/chat/protocol/h1;

    if-eqz p1, :cond_2

    .line 85
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 86
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/h1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->f:Lcom/wufan/friend/chat/protocol/h1;

    goto/16 :goto_1

    .line 87
    :sswitch_f
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->e:Lcom/wufan/friend/chat/protocol/p;

    if-eqz p1, :cond_12

    .line 88
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/p$b;

    goto :goto_11

    :cond_12
    move-object p1, v2

    .line 89
    :goto_11
    invoke-static {}, Lcom/wufan/friend/chat/protocol/p;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/p;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/y0;->e:Lcom/wufan/friend/chat/protocol/p;

    if-eqz p1, :cond_2

    .line 90
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 91
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/p;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->e:Lcom/wufan/friend/chat/protocol/p;

    goto/16 :goto_1

    .line 92
    :sswitch_10
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->d:Lcom/wufan/friend/chat/protocol/a;

    if-eqz p1, :cond_13

    .line 93
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a$b;

    goto :goto_12

    :cond_13
    move-object p1, v2

    .line 94
    :goto_12
    invoke-static {}, Lcom/wufan/friend/chat/protocol/a;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/a;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/y0;->d:Lcom/wufan/friend/chat/protocol/a;

    if-eqz p1, :cond_2

    .line 95
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 96
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->d:Lcom/wufan/friend/chat/protocol/a;

    goto/16 :goto_1

    .line 97
    :sswitch_11
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/y0;->c:Z

    goto/16 :goto_1

    .line 98
    :sswitch_12
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/y0;->b:J

    goto/16 :goto_1

    .line 99
    :sswitch_13
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/y0;->a:J
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_13
    :sswitch_14
    const/4 v0, 0x1

    goto/16 :goto_1

    :goto_14
    if-nez p1, :cond_2

    goto :goto_13

    :catchall_1
    move-exception p1

    goto :goto_15

    :catch_0
    move-exception p1

    .line 100
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 101
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 102
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    :goto_15
    throw p1

    .line 104
    :cond_14
    :pswitch_2
    sget-object p1, Lcom/wufan/friend/chat/protocol/y0;->q0:Lcom/wufan/friend/chat/protocol/y0;

    return-object p1

    .line 105
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 106
    check-cast p3, Lcom/wufan/friend/chat/protocol/y0;

    .line 107
    iget-wide v4, p0, Lcom/wufan/friend/chat/protocol/y0;->a:J

    const-wide/16 v9, 0x0

    cmp-long p1, v4, v9

    if-eqz p1, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    iget-wide v7, p3, Lcom/wufan/friend/chat/protocol/y0;->a:J

    cmp-long p1, v7, v9

    if-eqz p1, :cond_16

    const/4 v6, 0x1

    goto :goto_17

    :cond_16
    const/4 v6, 0x0

    :goto_17
    move-object v2, p2

    invoke-interface/range {v2 .. v8}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wufan/friend/chat/protocol/y0;->a:J

    .line 108
    iget-wide v2, p0, Lcom/wufan/friend/chat/protocol/y0;->b:J

    cmp-long p1, v2, v9

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    iget-wide v5, p3, Lcom/wufan/friend/chat/protocol/y0;->b:J

    cmp-long v4, v5, v9

    if-eqz v4, :cond_18

    const/4 v4, 0x1

    goto :goto_19

    :cond_18
    const/4 v4, 0x0

    :goto_19
    move-object v0, p2

    move v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/y0;->b:J

    .line 109
    iget-boolean p1, p0, Lcom/wufan/friend/chat/protocol/y0;->c:Z

    iget-boolean v0, p3, Lcom/wufan/friend/chat/protocol/y0;->c:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/y0;->c:Z

    .line 110
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->d:Lcom/wufan/friend/chat/protocol/a;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/y0;->d:Lcom/wufan/friend/chat/protocol/a;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->d:Lcom/wufan/friend/chat/protocol/a;

    .line 111
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->e:Lcom/wufan/friend/chat/protocol/p;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/y0;->e:Lcom/wufan/friend/chat/protocol/p;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/p;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->e:Lcom/wufan/friend/chat/protocol/p;

    .line 112
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->f:Lcom/wufan/friend/chat/protocol/h1;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/y0;->f:Lcom/wufan/friend/chat/protocol/h1;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/h1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->f:Lcom/wufan/friend/chat/protocol/h1;

    .line 113
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->g:Lcom/wufan/friend/chat/protocol/g0;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/y0;->g:Lcom/wufan/friend/chat/protocol/g0;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/g0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->g:Lcom/wufan/friend/chat/protocol/g0;

    .line 114
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->h:Lcom/wufan/friend/chat/protocol/x;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/y0;->h:Lcom/wufan/friend/chat/protocol/x;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/x;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->h:Lcom/wufan/friend/chat/protocol/x;

    .line 115
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->i:Lcom/wufan/friend/chat/protocol/v;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/y0;->i:Lcom/wufan/friend/chat/protocol/v;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/v;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->i:Lcom/wufan/friend/chat/protocol/v;

    .line 116
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->j:Lcom/wufan/friend/chat/protocol/l0;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/y0;->j:Lcom/wufan/friend/chat/protocol/l0;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/l0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->j:Lcom/wufan/friend/chat/protocol/l0;

    .line 117
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->k:Lcom/wufan/friend/chat/protocol/g;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/y0;->k:Lcom/wufan/friend/chat/protocol/g;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/g;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->k:Lcom/wufan/friend/chat/protocol/g;

    .line 118
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->l:Lcom/wufan/friend/chat/protocol/m;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/y0;->l:Lcom/wufan/friend/chat/protocol/m;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/m;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->l:Lcom/wufan/friend/chat/protocol/m;

    .line 119
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->m:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/y0;->m:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->m:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 120
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->n:Lcom/wufan/friend/chat/protocol/n0;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/y0;->n:Lcom/wufan/friend/chat/protocol/n0;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/n0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->n:Lcom/wufan/friend/chat/protocol/n0;

    .line 121
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->o:Lcom/wufan/friend/chat/protocol/t;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/y0;->o:Lcom/wufan/friend/chat/protocol/t;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->o:Lcom/wufan/friend/chat/protocol/t;

    .line 122
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->p:Lcom/wufan/friend/chat/protocol/q1;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/y0;->p:Lcom/wufan/friend/chat/protocol/q1;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/q1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->p:Lcom/wufan/friend/chat/protocol/q1;

    .line 123
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->q:Lcom/wufan/friend/chat/protocol/e;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/y0;->q:Lcom/wufan/friend/chat/protocol/e;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/e;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->q:Lcom/wufan/friend/chat/protocol/e;

    .line 124
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->r:Lcom/wufan/friend/chat/protocol/o1;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/y0;->r:Lcom/wufan/friend/chat/protocol/o1;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/o1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->r:Lcom/wufan/friend/chat/protocol/o1;

    .line 125
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->s:Lcom/wufan/friend/chat/protocol/z;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/y0;->s:Lcom/wufan/friend/chat/protocol/z;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/z;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->s:Lcom/wufan/friend/chat/protocol/z;

    .line 126
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->t:Lcom/wufan/friend/chat/protocol/f1;

    iget-object p3, p3, Lcom/wufan/friend/chat/protocol/y0;->t:Lcom/wufan/friend/chat/protocol/f1;

    invoke-interface {p2, p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/f1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/y0;->t:Lcom/wufan/friend/chat/protocol/f1;

    .line 127
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 128
    :pswitch_4
    new-instance p1, Lcom/wufan/friend/chat/protocol/y0$b;

    invoke-direct {p1, v2}, Lcom/wufan/friend/chat/protocol/y0$b;-><init>(Lcom/wufan/friend/chat/protocol/y0$a;)V

    return-object p1

    :pswitch_5
    return-object v2

    .line 129
    :pswitch_6
    sget-object p1, Lcom/wufan/friend/chat/protocol/y0;->q0:Lcom/wufan/friend/chat/protocol/y0;

    return-object p1

    .line 130
    :pswitch_7
    new-instance p1, Lcom/wufan/friend/chat/protocol/y0;

    invoke-direct {p1}, Lcom/wufan/friend/chat/protocol/y0;-><init>()V

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
        0x0 -> :sswitch_14
        0x8 -> :sswitch_13
        0x10 -> :sswitch_12
        0x18 -> :sswitch_11
        0x22 -> :sswitch_10
        0x2a -> :sswitch_f
        0x32 -> :sswitch_e
        0x3a -> :sswitch_d
        0x42 -> :sswitch_c
        0x4a -> :sswitch_b
        0x52 -> :sswitch_a
        0x5a -> :sswitch_9
        0x62 -> :sswitch_8
        0x6a -> :sswitch_7
        0x72 -> :sswitch_6
        0x7a -> :sswitch_5
        0x82 -> :sswitch_4
        0x8a -> :sswitch_3
        0x92 -> :sswitch_2
        0x9a -> :sswitch_1
        0xa2 -> :sswitch_0
    .end sparse-switch
.end method

.method public e2()Lcom/wufan/friend/chat/protocol/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->s:Lcom/wufan/friend/chat/protocol/z;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/z;->W2()Lcom/wufan/friend/chat/protocol/z;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public f2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->i:Lcom/wufan/friend/chat/protocol/v;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g1()Lcom/wufan/friend/chat/protocol/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->g:Lcom/wufan/friend/chat/protocol/g0;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/g0;->y3()Lcom/wufan/friend/chat/protocol/g0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public g2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->g:Lcom/wufan/friend/chat/protocol/g0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-wide v1, p0, Lcom/wufan/friend/chat/protocol/y0;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 3
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-wide v1, p0, Lcom/wufan/friend/chat/protocol/y0;->b:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v3, 0x2

    .line 5
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-boolean v1, p0, Lcom/wufan/friend/chat/protocol/y0;->c:Z

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 7
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/y0;->d:Lcom/wufan/friend/chat/protocol/a;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->U()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/y0;->e:Lcom/wufan/friend/chat/protocol/p;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 11
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->R()Lcom/wufan/friend/chat/protocol/p;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/y0;->f:Lcom/wufan/friend/chat/protocol/h1;

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 13
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->h2()Lcom/wufan/friend/chat/protocol/h1;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/y0;->g:Lcom/wufan/friend/chat/protocol/g0;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 15
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->g1()Lcom/wufan/friend/chat/protocol/g0;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/y0;->h:Lcom/wufan/friend/chat/protocol/x;

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    .line 17
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->k2()Lcom/wufan/friend/chat/protocol/x;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_8
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/y0;->i:Lcom/wufan/friend/chat/protocol/v;

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    .line 19
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->K0()Lcom/wufan/friend/chat/protocol/v;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_9
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/y0;->j:Lcom/wufan/friend/chat/protocol/l0;

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    .line 21
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->Y1()Lcom/wufan/friend/chat/protocol/l0;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_a
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/y0;->k:Lcom/wufan/friend/chat/protocol/g;

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    .line 23
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->t0()Lcom/wufan/friend/chat/protocol/g;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_b
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/y0;->l:Lcom/wufan/friend/chat/protocol/m;

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    .line 25
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->r0()Lcom/wufan/friend/chat/protocol/m;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_c
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/y0;->m:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    if-eqz v1, :cond_d

    const/16 v1, 0xd

    .line 27
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->u1()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_d
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/y0;->n:Lcom/wufan/friend/chat/protocol/n0;

    if-eqz v1, :cond_e

    const/16 v1, 0xe

    .line 29
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->a2()Lcom/wufan/friend/chat/protocol/n0;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_e
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/y0;->o:Lcom/wufan/friend/chat/protocol/t;

    if-eqz v1, :cond_f

    const/16 v1, 0xf

    .line 31
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->b1()Lcom/wufan/friend/chat/protocol/t;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_f
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/y0;->p:Lcom/wufan/friend/chat/protocol/q1;

    if-eqz v1, :cond_10

    const/16 v1, 0x10

    .line 33
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->K1()Lcom/wufan/friend/chat/protocol/q1;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_10
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/y0;->q:Lcom/wufan/friend/chat/protocol/e;

    if-eqz v1, :cond_11

    const/16 v1, 0x11

    .line 35
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->X1()Lcom/wufan/friend/chat/protocol/e;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_11
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/y0;->r:Lcom/wufan/friend/chat/protocol/o1;

    if-eqz v1, :cond_12

    const/16 v1, 0x12

    .line 37
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->p1()Lcom/wufan/friend/chat/protocol/o1;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    :cond_12
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/y0;->s:Lcom/wufan/friend/chat/protocol/z;

    if-eqz v1, :cond_13

    const/16 v1, 0x13

    .line 39
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->e2()Lcom/wufan/friend/chat/protocol/z;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_13
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/y0;->t:Lcom/wufan/friend/chat/protocol/f1;

    if-eqz v1, :cond_14

    const/16 v1, 0x14

    .line 41
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->O0()Lcom/wufan/friend/chat/protocol/f1;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_14
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public h2()Lcom/wufan/friend/chat/protocol/h1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->f:Lcom/wufan/friend/chat/protocol/h1;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/h1;->T2()Lcom/wufan/friend/chat/protocol/h1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public k2()Lcom/wufan/friend/chat/protocol/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->h:Lcom/wufan/friend/chat/protocol/x;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/x;->g3()Lcom/wufan/friend/chat/protocol/x;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public l1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/y0;->c:Z

    return v0
.end method

.method public m2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->d:Lcom/wufan/friend/chat/protocol/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p1()Lcom/wufan/friend/chat/protocol/o1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->r:Lcom/wufan/friend/chat/protocol/o1;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/o1;->g3()Lcom/wufan/friend/chat/protocol/o1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public q1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->o:Lcom/wufan/friend/chat/protocol/t;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->h:Lcom/wufan/friend/chat/protocol/x;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r0()Lcom/wufan/friend/chat/protocol/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->l:Lcom/wufan/friend/chat/protocol/m;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/m;->d3()Lcom/wufan/friend/chat/protocol/m;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public s2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->s:Lcom/wufan/friend/chat/protocol/z;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t0()Lcom/wufan/friend/chat/protocol/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->k:Lcom/wufan/friend/chat/protocol/g;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/g;->m3()Lcom/wufan/friend/chat/protocol/g;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public t2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->n:Lcom/wufan/friend/chat/protocol/n0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u1()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->m:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->b3()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    move-result-object v0

    :cond_0
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
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/y0;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 2
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/y0;->b:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    .line 4
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/y0;->c:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->d:Lcom/wufan/friend/chat/protocol/a;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->U()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->e:Lcom/wufan/friend/chat/protocol/p;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->R()Lcom/wufan/friend/chat/protocol/p;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->f:Lcom/wufan/friend/chat/protocol/h1;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->h2()Lcom/wufan/friend/chat/protocol/h1;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->g:Lcom/wufan/friend/chat/protocol/g0;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 14
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->g1()Lcom/wufan/friend/chat/protocol/g0;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->h:Lcom/wufan/friend/chat/protocol/x;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 16
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->k2()Lcom/wufan/friend/chat/protocol/x;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->i:Lcom/wufan/friend/chat/protocol/v;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 18
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->K0()Lcom/wufan/friend/chat/protocol/v;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->j:Lcom/wufan/friend/chat/protocol/l0;

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 20
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->Y1()Lcom/wufan/friend/chat/protocol/l0;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->k:Lcom/wufan/friend/chat/protocol/g;

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    .line 22
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->t0()Lcom/wufan/friend/chat/protocol/g;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 23
    :cond_a
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->l:Lcom/wufan/friend/chat/protocol/m;

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    .line 24
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->r0()Lcom/wufan/friend/chat/protocol/m;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 25
    :cond_b
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->m:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    .line 26
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->u1()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 27
    :cond_c
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->n:Lcom/wufan/friend/chat/protocol/n0;

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    .line 28
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->a2()Lcom/wufan/friend/chat/protocol/n0;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 29
    :cond_d
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->o:Lcom/wufan/friend/chat/protocol/t;

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    .line 30
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->b1()Lcom/wufan/friend/chat/protocol/t;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 31
    :cond_e
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->p:Lcom/wufan/friend/chat/protocol/q1;

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    .line 32
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->K1()Lcom/wufan/friend/chat/protocol/q1;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 33
    :cond_f
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->q:Lcom/wufan/friend/chat/protocol/e;

    if-eqz v0, :cond_10

    const/16 v0, 0x11

    .line 34
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->X1()Lcom/wufan/friend/chat/protocol/e;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 35
    :cond_10
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->r:Lcom/wufan/friend/chat/protocol/o1;

    if-eqz v0, :cond_11

    const/16 v0, 0x12

    .line 36
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->p1()Lcom/wufan/friend/chat/protocol/o1;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 37
    :cond_11
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->s:Lcom/wufan/friend/chat/protocol/z;

    if-eqz v0, :cond_12

    const/16 v0, 0x13

    .line 38
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->e2()Lcom/wufan/friend/chat/protocol/z;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39
    :cond_12
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/y0;->t:Lcom/wufan/friend/chat/protocol/f1;

    if-eqz v0, :cond_13

    const/16 v0, 0x14

    .line 40
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/y0;->O0()Lcom/wufan/friend/chat/protocol/f1;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_13
    return-void
.end method
