.class public final Lcom/wufan/friend/chat/protocol/t1;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RequestArgs.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/u1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/t1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/friend/chat/protocol/t1;",
        "Lcom/wufan/friend/chat/protocol/t1$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/u1;"
    }
.end annotation


# static fields
.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x3

.field public static final n:I = 0x4

.field public static final o:I = 0x5

.field public static final p:I = 0x6

.field public static final q:I = 0x7

.field public static final r:I = 0x8

.field public static final s:I = 0x9

.field public static final t:I = 0xa

.field private static final u:Lcom/wufan/friend/chat/protocol/t1;

.field private static volatile v:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/t1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/wufan/friend/chat/protocol/t0;

.field private b:Lcom/wufan/friend/chat/protocol/c;

.field private c:Lcom/wufan/friend/chat/protocol/HeartArgs;

.field private d:Lcom/wufan/friend/chat/protocol/e0;

.field private e:Lcom/wufan/friend/chat/protocol/a1;

.field private f:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

.field private g:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

.field private h:Lcom/wufan/friend/chat/protocol/i;

.field private i:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

.field private j:Lcom/wufan/friend/chat/protocol/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/t1;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/t1;->u:Lcom/wufan/friend/chat/protocol/t1;

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

.method static synthetic A3(Lcom/wufan/friend/chat/protocol/t1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/t1;->N3()V

    return-void
.end method

.method private A4(Lcom/wufan/friend/chat/protocol/t0$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->a:Lcom/wufan/friend/chat/protocol/t0;

    return-void
.end method

.method static synthetic B3(Lcom/wufan/friend/chat/protocol/t1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/t1;->M3()V

    return-void
.end method

.method private B4(Lcom/wufan/friend/chat/protocol/t0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->a:Lcom/wufan/friend/chat/protocol/t0;

    return-void
.end method

.method static synthetic C3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->p4(Lcom/wufan/friend/chat/protocol/c;)V

    return-void
.end method

.method private C4(Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->f:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-void
.end method

.method static synthetic D3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/c$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->o4(Lcom/wufan/friend/chat/protocol/c$b;)V

    return-void
.end method

.method private D4(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->f:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-void
.end method

.method static synthetic E3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->S3(Lcom/wufan/friend/chat/protocol/c;)V

    return-void
.end method

.method private E4(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->i:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    return-void
.end method

.method static synthetic F3(Lcom/wufan/friend/chat/protocol/t1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/t1;->H3()V

    return-void
.end method

.method private F4(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->i:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    return-void
.end method

.method static synthetic G3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/HeartArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->x4(Lcom/wufan/friend/chat/protocol/HeartArgs;)V

    return-void
.end method

.method private G4(Lcom/wufan/friend/chat/protocol/a1$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->e:Lcom/wufan/friend/chat/protocol/a1;

    return-void
.end method

.method private H3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->b:Lcom/wufan/friend/chat/protocol/c;

    return-void
.end method

.method private H4(Lcom/wufan/friend/chat/protocol/a1;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->e:Lcom/wufan/friend/chat/protocol/a1;

    return-void
.end method

.method private I3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->h:Lcom/wufan/friend/chat/protocol/i;

    return-void
.end method

.method private J3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->g:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    return-void
.end method

.method private K3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->d:Lcom/wufan/friend/chat/protocol/e0;

    return-void
.end method

.method private L3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->c:Lcom/wufan/friend/chat/protocol/HeartArgs;

    return-void
.end method

.method private M3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->j:Lcom/wufan/friend/chat/protocol/i0;

    return-void
.end method

.method private N3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->a:Lcom/wufan/friend/chat/protocol/t0;

    return-void
.end method

.method private O3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->f:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    return-void
.end method

.method private P3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->i:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    return-void
.end method

.method private Q3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->e:Lcom/wufan/friend/chat/protocol/a1;

    return-void
.end method

.method public static R3()Lcom/wufan/friend/chat/protocol/t1;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/t1;->u:Lcom/wufan/friend/chat/protocol/t1;

    return-object v0
.end method

.method static synthetic S2()Lcom/wufan/friend/chat/protocol/t1;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/t1;->u:Lcom/wufan/friend/chat/protocol/t1;

    return-object v0
.end method

.method private S3(Lcom/wufan/friend/chat/protocol/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->b:Lcom/wufan/friend/chat/protocol/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/c;->d3()Lcom/wufan/friend/chat/protocol/c;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->b:Lcom/wufan/friend/chat/protocol/c;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/c;->f3(Lcom/wufan/friend/chat/protocol/c;)Lcom/wufan/friend/chat/protocol/c$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/c$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/c;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->b:Lcom/wufan/friend/chat/protocol/c;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->b:Lcom/wufan/friend/chat/protocol/c;

    :goto_0
    return-void
.end method

.method static synthetic T2(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/t0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->B4(Lcom/wufan/friend/chat/protocol/t0;)V

    return-void
.end method

.method private T3(Lcom/wufan/friend/chat/protocol/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->h:Lcom/wufan/friend/chat/protocol/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/i;->W2()Lcom/wufan/friend/chat/protocol/i;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->h:Lcom/wufan/friend/chat/protocol/i;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/i;->Y2(Lcom/wufan/friend/chat/protocol/i;)Lcom/wufan/friend/chat/protocol/i$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/i$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/i;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->h:Lcom/wufan/friend/chat/protocol/i;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->h:Lcom/wufan/friend/chat/protocol/i;

    :goto_0
    return-void
.end method

.method static synthetic U2(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/HeartArgs$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->w4(Lcom/wufan/friend/chat/protocol/HeartArgs$b;)V

    return-void
.end method

.method private U3(Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->g:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;->c3()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->g:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;->e3(Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->g:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->g:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    :goto_0
    return-void
.end method

.method static synthetic V2(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/HeartArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->W3(Lcom/wufan/friend/chat/protocol/HeartArgs;)V

    return-void
.end method

.method private V3(Lcom/wufan/friend/chat/protocol/e0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->d:Lcom/wufan/friend/chat/protocol/e0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/e0;->l3()Lcom/wufan/friend/chat/protocol/e0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->d:Lcom/wufan/friend/chat/protocol/e0;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/e0;->n3(Lcom/wufan/friend/chat/protocol/e0;)Lcom/wufan/friend/chat/protocol/e0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/e0$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/e0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->d:Lcom/wufan/friend/chat/protocol/e0;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->d:Lcom/wufan/friend/chat/protocol/e0;

    :goto_0
    return-void
.end method

.method static synthetic W2(Lcom/wufan/friend/chat/protocol/t1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/t1;->L3()V

    return-void
.end method

.method private W3(Lcom/wufan/friend/chat/protocol/HeartArgs;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->c:Lcom/wufan/friend/chat/protocol/HeartArgs;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/HeartArgs;->W2()Lcom/wufan/friend/chat/protocol/HeartArgs;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->c:Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/HeartArgs;->Y2(Lcom/wufan/friend/chat/protocol/HeartArgs;)Lcom/wufan/friend/chat/protocol/HeartArgs$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/HeartArgs$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/HeartArgs;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->c:Lcom/wufan/friend/chat/protocol/HeartArgs;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->c:Lcom/wufan/friend/chat/protocol/HeartArgs;

    :goto_0
    return-void
.end method

.method static synthetic X2(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->v4(Lcom/wufan/friend/chat/protocol/e0;)V

    return-void
.end method

.method private X3(Lcom/wufan/friend/chat/protocol/i0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->j:Lcom/wufan/friend/chat/protocol/i0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/i0;->Y2()Lcom/wufan/friend/chat/protocol/i0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->j:Lcom/wufan/friend/chat/protocol/i0;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/i0;->a3(Lcom/wufan/friend/chat/protocol/i0;)Lcom/wufan/friend/chat/protocol/i0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/i0$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/i0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->j:Lcom/wufan/friend/chat/protocol/i0;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->j:Lcom/wufan/friend/chat/protocol/i0;

    :goto_0
    return-void
.end method

.method static synthetic Y2(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/e0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->u4(Lcom/wufan/friend/chat/protocol/e0$b;)V

    return-void
.end method

.method private Y3(Lcom/wufan/friend/chat/protocol/t0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->a:Lcom/wufan/friend/chat/protocol/t0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t0;->c3()Lcom/wufan/friend/chat/protocol/t0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->a:Lcom/wufan/friend/chat/protocol/t0;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/t0;->e3(Lcom/wufan/friend/chat/protocol/t0;)Lcom/wufan/friend/chat/protocol/t0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t0$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->a:Lcom/wufan/friend/chat/protocol/t0;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->a:Lcom/wufan/friend/chat/protocol/t0;

    :goto_0
    return-void
.end method

.method static synthetic Z2(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->V3(Lcom/wufan/friend/chat/protocol/e0;)V

    return-void
.end method

.method private Z3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->f:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->s3()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->f:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->u3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->f:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->f:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    :goto_0
    return-void
.end method

.method static synthetic a3(Lcom/wufan/friend/chat/protocol/t1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/t1;->K3()V

    return-void
.end method

.method private a4(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->i:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->l3()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->i:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->n3(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->i:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->i:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    :goto_0
    return-void
.end method

.method static synthetic b3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->H4(Lcom/wufan/friend/chat/protocol/a1;)V

    return-void
.end method

.method private b4(Lcom/wufan/friend/chat/protocol/a1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->e:Lcom/wufan/friend/chat/protocol/a1;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/a1;->W2()Lcom/wufan/friend/chat/protocol/a1;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->e:Lcom/wufan/friend/chat/protocol/a1;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/a1;->Y2(Lcom/wufan/friend/chat/protocol/a1;)Lcom/wufan/friend/chat/protocol/a1$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a1$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->e:Lcom/wufan/friend/chat/protocol/a1;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->e:Lcom/wufan/friend/chat/protocol/a1;

    :goto_0
    return-void
.end method

.method static synthetic c3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/a1$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->G4(Lcom/wufan/friend/chat/protocol/a1$b;)V

    return-void
.end method

.method public static c4()Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/t1;->u:Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1$b;

    return-object v0
.end method

.method static synthetic d3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->b4(Lcom/wufan/friend/chat/protocol/a1;)V

    return-void
.end method

.method public static d4(Lcom/wufan/friend/chat/protocol/t1;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/t1;->u:Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/t1$b;

    return-object p0
.end method

.method static synthetic e3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/t0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->A4(Lcom/wufan/friend/chat/protocol/t0$b;)V

    return-void
.end method

.method public static e4(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/t1;->u:Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/t1;

    return-object p0
.end method

.method static synthetic f3(Lcom/wufan/friend/chat/protocol/t1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/t1;->Q3()V

    return-void
.end method

.method public static f4(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/t1;->u:Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/t1;

    return-object p0
.end method

.method static synthetic g3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->D4(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V

    return-void
.end method

.method public static g4(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/t1;->u:Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/t1;

    return-object p0
.end method

.method static synthetic h3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->C4(Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;)V

    return-void
.end method

.method public static h4(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/t1;->u:Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/t1;

    return-object p0
.end method

.method static synthetic i3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->Z3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V

    return-void
.end method

.method public static i4(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/t1;->u:Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/t1;

    return-object p0
.end method

.method static synthetic j3(Lcom/wufan/friend/chat/protocol/t1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/t1;->O3()V

    return-void
.end method

.method public static j4(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/t1;->u:Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/t1;

    return-object p0
.end method

.method static synthetic k3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->t4(Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)V

    return-void
.end method

.method public static k4(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/t1;->u:Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/t1;

    return-object p0
.end method

.method static synthetic l3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->s4(Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;)V

    return-void
.end method

.method public static l4(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/t1;->u:Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/t1;

    return-object p0
.end method

.method static synthetic m3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->U3(Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)V

    return-void
.end method

.method public static m4([B)Lcom/wufan/friend/chat/protocol/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/t1;->u:Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/t1;

    return-object p0
.end method

.method static synthetic n3(Lcom/wufan/friend/chat/protocol/t1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/t1;->J3()V

    return-void
.end method

.method public static n4([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/t1;->u:Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/t1;

    return-object p0
.end method

.method static synthetic o3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->r4(Lcom/wufan/friend/chat/protocol/i;)V

    return-void
.end method

.method private o4(Lcom/wufan/friend/chat/protocol/c$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/c;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->b:Lcom/wufan/friend/chat/protocol/c;

    return-void
.end method

.method static synthetic p3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/t0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->Y3(Lcom/wufan/friend/chat/protocol/t0;)V

    return-void
.end method

.method private p4(Lcom/wufan/friend/chat/protocol/c;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->b:Lcom/wufan/friend/chat/protocol/c;

    return-void
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/t1;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/t1;->u:Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/i$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->q4(Lcom/wufan/friend/chat/protocol/i$b;)V

    return-void
.end method

.method private q4(Lcom/wufan/friend/chat/protocol/i$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/i;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->h:Lcom/wufan/friend/chat/protocol/i;

    return-void
.end method

.method static synthetic r3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->T3(Lcom/wufan/friend/chat/protocol/i;)V

    return-void
.end method

.method private r4(Lcom/wufan/friend/chat/protocol/i;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->h:Lcom/wufan/friend/chat/protocol/i;

    return-void
.end method

.method static synthetic s3(Lcom/wufan/friend/chat/protocol/t1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/t1;->I3()V

    return-void
.end method

.method private s4(Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->g:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    return-void
.end method

.method static synthetic t3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->F4(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)V

    return-void
.end method

.method private t4(Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->g:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    return-void
.end method

.method static synthetic u3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->E4(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;)V

    return-void
.end method

.method private u4(Lcom/wufan/friend/chat/protocol/e0$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/e0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->d:Lcom/wufan/friend/chat/protocol/e0;

    return-void
.end method

.method static synthetic v3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->a4(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)V

    return-void
.end method

.method private v4(Lcom/wufan/friend/chat/protocol/e0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->d:Lcom/wufan/friend/chat/protocol/e0;

    return-void
.end method

.method static synthetic w3(Lcom/wufan/friend/chat/protocol/t1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/t1;->P3()V

    return-void
.end method

.method private w4(Lcom/wufan/friend/chat/protocol/HeartArgs$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/HeartArgs;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->c:Lcom/wufan/friend/chat/protocol/HeartArgs;

    return-void
.end method

.method static synthetic x3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->z4(Lcom/wufan/friend/chat/protocol/i0;)V

    return-void
.end method

.method private x4(Lcom/wufan/friend/chat/protocol/HeartArgs;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->c:Lcom/wufan/friend/chat/protocol/HeartArgs;

    return-void
.end method

.method static synthetic y3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/i0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->y4(Lcom/wufan/friend/chat/protocol/i0$b;)V

    return-void
.end method

.method private y4(Lcom/wufan/friend/chat/protocol/i0$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/i0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->j:Lcom/wufan/friend/chat/protocol/i0;

    return-void
.end method

.method static synthetic z3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/t1;->X3(Lcom/wufan/friend/chat/protocol/i0;)V

    return-void
.end method

.method private z4(Lcom/wufan/friend/chat/protocol/i0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->j:Lcom/wufan/friend/chat/protocol/i0;

    return-void
.end method


# virtual methods
.method public A2()Lcom/wufan/friend/chat/protocol/HeartArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->c:Lcom/wufan/friend/chat/protocol/HeartArgs;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/HeartArgs;->W2()Lcom/wufan/friend/chat/protocol/HeartArgs;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public B1()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->g:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;->c3()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public B2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->a:Lcom/wufan/friend/chat/protocol/t0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->i:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G0()Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->f:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->s3()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public G2()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->i:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->l3()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public H0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->g:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H2()Lcom/wufan/friend/chat/protocol/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->j:Lcom/wufan/friend/chat/protocol/i0;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/i0;->Y2()Lcom/wufan/friend/chat/protocol/i0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public I0()Lcom/wufan/friend/chat/protocol/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->d:Lcom/wufan/friend/chat/protocol/e0;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/e0;->l3()Lcom/wufan/friend/chat/protocol/e0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public K2()Lcom/wufan/friend/chat/protocol/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->h:Lcom/wufan/friend/chat/protocol/i;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/i;->W2()Lcom/wufan/friend/chat/protocol/i;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public L0()Lcom/wufan/friend/chat/protocol/t0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->a:Lcom/wufan/friend/chat/protocol/t0;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/t0;->c3()Lcom/wufan/friend/chat/protocol/t0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public M0()Lcom/wufan/friend/chat/protocol/a1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->e:Lcom/wufan/friend/chat/protocol/a1;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/a1;->W2()Lcom/wufan/friend/chat/protocol/a1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public M2()Lcom/wufan/friend/chat/protocol/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->b:Lcom/wufan/friend/chat/protocol/c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/c;->d3()Lcom/wufan/friend/chat/protocol/c;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public Q2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->j:Lcom/wufan/friend/chat/protocol/i0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public R1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->f:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public S1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->c:Lcom/wufan/friend/chat/protocol/HeartArgs;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public W1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->e:Lcom/wufan/friend/chat/protocol/a1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->d:Lcom/wufan/friend/chat/protocol/e0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/t1$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, Lcom/wufan/friend/chat/protocol/t1;->v:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/friend/chat/protocol/t1;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/friend/chat/protocol/t1;->v:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/friend/chat/protocol/t1;->u:Lcom/wufan/friend/chat/protocol/t1;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/friend/chat/protocol/t1;->v:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/t1;->v:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_d

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 11
    invoke-virtual {p2, v1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v1

    goto/16 :goto_d

    .line 12
    :sswitch_0
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->j:Lcom/wufan/friend/chat/protocol/i0;

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/i0$b;

    goto :goto_2

    :cond_3
    move-object v1, v0

    .line 14
    :goto_2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/i0;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/i0;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/t1;->j:Lcom/wufan/friend/chat/protocol/i0;

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/i0;

    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->j:Lcom/wufan/friend/chat/protocol/i0;

    goto :goto_1

    .line 17
    :sswitch_1
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->i:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    goto :goto_3

    :cond_4
    move-object v1, v0

    .line 19
    :goto_3
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/t1;->i:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->i:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    goto :goto_1

    .line 22
    :sswitch_2
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->h:Lcom/wufan/friend/chat/protocol/i;

    if-eqz v1, :cond_5

    .line 23
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/i$b;

    goto :goto_4

    :cond_5
    move-object v1, v0

    .line 24
    :goto_4
    invoke-static {}, Lcom/wufan/friend/chat/protocol/i;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/i;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/t1;->h:Lcom/wufan/friend/chat/protocol/i;

    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 26
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/i;

    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->h:Lcom/wufan/friend/chat/protocol/i;

    goto/16 :goto_1

    .line 27
    :sswitch_3
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->g:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    if-eqz v1, :cond_6

    .line 28
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;

    goto :goto_5

    :cond_6
    move-object v1, v0

    .line 29
    :goto_5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/t1;->g:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    if-eqz v1, :cond_2

    .line 30
    invoke-virtual {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 31
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->g:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    goto/16 :goto_1

    .line 32
    :sswitch_4
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->f:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    if-eqz v1, :cond_7

    .line 33
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    goto :goto_6

    :cond_7
    move-object v1, v0

    .line 34
    :goto_6
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/t1;->f:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    if-eqz v1, :cond_2

    .line 35
    invoke-virtual {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 36
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->f:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    goto/16 :goto_1

    .line 37
    :sswitch_5
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->e:Lcom/wufan/friend/chat/protocol/a1;

    if-eqz v1, :cond_8

    .line 38
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/a1$b;

    goto :goto_7

    :cond_8
    move-object v1, v0

    .line 39
    :goto_7
    invoke-static {}, Lcom/wufan/friend/chat/protocol/a1;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/a1;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/t1;->e:Lcom/wufan/friend/chat/protocol/a1;

    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 41
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/a1;

    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->e:Lcom/wufan/friend/chat/protocol/a1;

    goto/16 :goto_1

    .line 42
    :sswitch_6
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->d:Lcom/wufan/friend/chat/protocol/e0;

    if-eqz v1, :cond_9

    .line 43
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/e0$b;

    goto :goto_8

    :cond_9
    move-object v1, v0

    .line 44
    :goto_8
    invoke-static {}, Lcom/wufan/friend/chat/protocol/e0;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/e0;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/t1;->d:Lcom/wufan/friend/chat/protocol/e0;

    if-eqz v1, :cond_2

    .line 45
    invoke-virtual {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 46
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/e0;

    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->d:Lcom/wufan/friend/chat/protocol/e0;

    goto/16 :goto_1

    .line 47
    :sswitch_7
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->c:Lcom/wufan/friend/chat/protocol/HeartArgs;

    if-eqz v1, :cond_a

    .line 48
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/HeartArgs$b;

    goto :goto_9

    :cond_a
    move-object v1, v0

    .line 49
    :goto_9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/HeartArgs;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/HeartArgs;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/t1;->c:Lcom/wufan/friend/chat/protocol/HeartArgs;

    if-eqz v1, :cond_2

    .line 50
    invoke-virtual {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 51
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/HeartArgs;

    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->c:Lcom/wufan/friend/chat/protocol/HeartArgs;

    goto/16 :goto_1

    .line 52
    :sswitch_8
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->b:Lcom/wufan/friend/chat/protocol/c;

    if-eqz v1, :cond_b

    .line 53
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/c$b;

    goto :goto_a

    :cond_b
    move-object v1, v0

    .line 54
    :goto_a
    invoke-static {}, Lcom/wufan/friend/chat/protocol/c;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/c;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/t1;->b:Lcom/wufan/friend/chat/protocol/c;

    if-eqz v1, :cond_2

    .line 55
    invoke-virtual {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 56
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/c;

    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->b:Lcom/wufan/friend/chat/protocol/c;

    goto/16 :goto_1

    .line 57
    :sswitch_9
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->a:Lcom/wufan/friend/chat/protocol/t0;

    if-eqz v1, :cond_c

    .line 58
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/t0$b;

    goto :goto_b

    :cond_c
    move-object v1, v0

    .line 59
    :goto_b
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t0;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/t0;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/t1;->a:Lcom/wufan/friend/chat/protocol/t0;

    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 61
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/t0;

    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->a:Lcom/wufan/friend/chat/protocol/t0;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_c
    :sswitch_a
    const/4 p1, 0x1

    goto/16 :goto_1

    :goto_d
    if-nez v1, :cond_2

    goto :goto_c

    :catchall_1
    move-exception p1

    goto :goto_e

    :catch_0
    move-exception p1

    .line 62
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 63
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 64
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    :goto_e
    throw p1

    .line 66
    :cond_d
    :pswitch_2
    sget-object p1, Lcom/wufan/friend/chat/protocol/t1;->u:Lcom/wufan/friend/chat/protocol/t1;

    return-object p1

    .line 67
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 68
    check-cast p3, Lcom/wufan/friend/chat/protocol/t1;

    .line 69
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->a:Lcom/wufan/friend/chat/protocol/t0;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/t1;->a:Lcom/wufan/friend/chat/protocol/t0;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->a:Lcom/wufan/friend/chat/protocol/t0;

    .line 70
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->b:Lcom/wufan/friend/chat/protocol/c;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/t1;->b:Lcom/wufan/friend/chat/protocol/c;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/c;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->b:Lcom/wufan/friend/chat/protocol/c;

    .line 71
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->c:Lcom/wufan/friend/chat/protocol/HeartArgs;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/t1;->c:Lcom/wufan/friend/chat/protocol/HeartArgs;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/HeartArgs;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->c:Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 72
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->d:Lcom/wufan/friend/chat/protocol/e0;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/t1;->d:Lcom/wufan/friend/chat/protocol/e0;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/e0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->d:Lcom/wufan/friend/chat/protocol/e0;

    .line 73
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->e:Lcom/wufan/friend/chat/protocol/a1;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/t1;->e:Lcom/wufan/friend/chat/protocol/a1;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->e:Lcom/wufan/friend/chat/protocol/a1;

    .line 74
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->f:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/t1;->f:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->f:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 75
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->g:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/t1;->g:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->g:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 76
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->h:Lcom/wufan/friend/chat/protocol/i;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/t1;->h:Lcom/wufan/friend/chat/protocol/i;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/i;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->h:Lcom/wufan/friend/chat/protocol/i;

    .line 77
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->i:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/t1;->i:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->i:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 78
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->j:Lcom/wufan/friend/chat/protocol/i0;

    iget-object p3, p3, Lcom/wufan/friend/chat/protocol/t1;->j:Lcom/wufan/friend/chat/protocol/i0;

    invoke-interface {p2, p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/i0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/t1;->j:Lcom/wufan/friend/chat/protocol/i0;

    .line 79
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 80
    :pswitch_4
    new-instance p1, Lcom/wufan/friend/chat/protocol/t1$b;

    invoke-direct {p1, v0}, Lcom/wufan/friend/chat/protocol/t1$b;-><init>(Lcom/wufan/friend/chat/protocol/t1$a;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 81
    :pswitch_6
    sget-object p1, Lcom/wufan/friend/chat/protocol/t1;->u:Lcom/wufan/friend/chat/protocol/t1;

    return-object p1

    .line 82
    :pswitch_7
    new-instance p1, Lcom/wufan/friend/chat/protocol/t1;

    invoke-direct {p1}, Lcom/wufan/friend/chat/protocol/t1;-><init>()V

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
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x12 -> :sswitch_8
        0x1a -> :sswitch_7
        0x22 -> :sswitch_6
        0x2a -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x4a -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->a:Lcom/wufan/friend/chat/protocol/t0;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/t1;->L0()Lcom/wufan/friend/chat/protocol/t0;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->b:Lcom/wufan/friend/chat/protocol/c;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/t1;->M2()Lcom/wufan/friend/chat/protocol/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->c:Lcom/wufan/friend/chat/protocol/HeartArgs;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/t1;->A2()Lcom/wufan/friend/chat/protocol/HeartArgs;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->d:Lcom/wufan/friend/chat/protocol/e0;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/t1;->I0()Lcom/wufan/friend/chat/protocol/e0;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->e:Lcom/wufan/friend/chat/protocol/a1;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 11
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/t1;->M0()Lcom/wufan/friend/chat/protocol/a1;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->f:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 13
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/t1;->G0()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->g:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 15
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/t1;->B1()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->h:Lcom/wufan/friend/chat/protocol/i;

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    .line 17
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/t1;->K2()Lcom/wufan/friend/chat/protocol/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_8
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->i:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    .line 19
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/t1;->G2()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_9
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/t1;->j:Lcom/wufan/friend/chat/protocol/i0;

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    .line 21
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/t1;->H2()Lcom/wufan/friend/chat/protocol/i0;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_a
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public l0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->b:Lcom/wufan/friend/chat/protocol/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->a:Lcom/wufan/friend/chat/protocol/t0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/t1;->L0()Lcom/wufan/friend/chat/protocol/t0;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->b:Lcom/wufan/friend/chat/protocol/c;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/t1;->M2()Lcom/wufan/friend/chat/protocol/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->c:Lcom/wufan/friend/chat/protocol/HeartArgs;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/t1;->A2()Lcom/wufan/friend/chat/protocol/HeartArgs;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->d:Lcom/wufan/friend/chat/protocol/e0;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/t1;->I0()Lcom/wufan/friend/chat/protocol/e0;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->e:Lcom/wufan/friend/chat/protocol/a1;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/t1;->M0()Lcom/wufan/friend/chat/protocol/a1;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->f:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/t1;->G0()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->g:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 14
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/t1;->B1()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->h:Lcom/wufan/friend/chat/protocol/i;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 16
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/t1;->K2()Lcom/wufan/friend/chat/protocol/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->i:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 18
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/t1;->G2()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->j:Lcom/wufan/friend/chat/protocol/i0;

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 20
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/t1;->H2()Lcom/wufan/friend/chat/protocol/i0;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_9
    return-void
.end method

.method public z1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/t1;->h:Lcom/wufan/friend/chat/protocol/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
