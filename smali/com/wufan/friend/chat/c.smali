.class public Lcom/wufan/friend/chat/c;
.super Ljava/lang/Object;
.source "FriendPresenter.java"


# static fields
.field private static volatile n:Lcom/wufan/friend/chat/c;


# instance fields
.field private a:Landroid/content/Context;

.field b:Lcom/wufan/friend/chat/rpc/b;

.field c:Landroid/os/Handler;

.field private d:Z

.field private e:I

.field private f:Lcom/join/mgps/dto/FriendAccountInfo;

.field private g:Lcom/join/mgps/socket/fight/arena/b;

.field h:Lcom/join/mgps/dto/FriendBean;

.field i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/join/mgps/dto/FriendInviteBean;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation
.end field

.field final k:I

.field private l:Lcom/join/mgps/socket/fight/arena/b$b;

.field public final m:Lapp/mgsim/arena/SocketListener$NotifyObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wufan/friend/chat/c;->c:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/wufan/friend/chat/c;->e:I

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wufan/friend/chat/c;->j:Ljava/util/List;

    const/16 v0, 0x3a98

    .line 6
    iput v0, p0, Lcom/wufan/friend/chat/c;->k:I

    .line 7
    new-instance v0, Lcom/wufan/friend/chat/c$b;

    invoke-direct {v0, p0}, Lcom/wufan/friend/chat/c$b;-><init>(Lcom/wufan/friend/chat/c;)V

    iput-object v0, p0, Lcom/wufan/friend/chat/c;->l:Lcom/join/mgps/socket/fight/arena/b$b;

    .line 8
    new-instance v0, Lcom/wufan/friend/chat/c$c;

    invoke-direct {v0, p0}, Lcom/wufan/friend/chat/c$c;-><init>(Lcom/wufan/friend/chat/c;)V

    iput-object v0, p0, Lcom/wufan/friend/chat/c;->m:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 9
    iput-object p1, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    .line 10
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->C()V

    return-void
.end method

.method private synthetic I(Lcom/join/mgps/dto/FriendBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/event/m;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/join/mgps/event/m;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic J(Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;Lcom/wufan/friend/chat/protocol/PlayType;JII)V
    .locals 11

    move-object v0, p0

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1}, Lg1/f;->s()Ljava/util/List;

    move-result-object v1

    .line 2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-wide v5, p3

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wufan/friend/chat/c;->Y(Ljava/lang/String;)Z

    move-result v9

    move-object v3, p1

    move-object v4, p2

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v10}, Lcom/wufan/friend/chat/rpc/b;->h(Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;Lcom/wufan/friend/chat/protocol/PlayType;JIIZLjava/util/List;)V

    return-void
.end method

.method private X()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u91cd\u8bd5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic a(Lcom/wufan/friend/chat/c;Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;Lcom/wufan/friend/chat/protocol/PlayType;JII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/wufan/friend/chat/c;->J(Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;Lcom/wufan/friend/chat/protocol/PlayType;JII)V

    return-void
.end method

.method public static synthetic b(Lcom/wufan/friend/chat/c;Lcom/join/mgps/dto/FriendBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/c;->I(Lcom/join/mgps/dto/FriendBean;)V

    return-void
.end method

.method static synthetic c(Lcom/wufan/friend/chat/c;)Lcom/join/mgps/socket/fight/arena/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    return-object p0
.end method

.method static synthetic d(Lcom/wufan/friend/chat/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/c;->X()V

    return-void
.end method

.method public static u()Lcom/wufan/friend/chat/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/c;->n:Lcom/wufan/friend/chat/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/wufan/friend/chat/c;

    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wufan/friend/chat/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wufan/friend/chat/c;->n:Lcom/wufan/friend/chat/c;

    .line 3
    :cond_0
    sget-object v0, Lcom/wufan/friend/chat/c;->n:Lcom/wufan/friend/chat/c;

    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/c;->e:I

    return v0
.end method

.method public B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/rpc/b;->m()V

    return-void
.end method

.method public C()V
    .locals 3

    .line 1
    sget-object v0, Lcom/join/mgps/rpc/g;->J:Ljava/lang/String;

    .line 2
    sget v1, Lcom/join/mgps/rpc/g;->K:I

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0, v1}, Lcom/wufan/friend/chat/rpc/b;->o(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/rpc/b;->d()V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    new-instance v2, Lcom/wufan/friend/chat/rpc/b;

    invoke-direct {v2, v0, v1}, Lcom/wufan/friend/chat/rpc/b;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->f:Lcom/join/mgps/dto/FriendAccountInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendAccountInfo;->isBanned()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E(Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/FriendBean;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendBean;->getTimestamp()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3a98

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 7
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public F()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/rpc/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wufan/friend/chat/c;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9]*"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method H(ILjava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lapp/mgsim/arena/ArenaRequestFactory;->joinRoom(Ljava/lang/String;ILjava/lang/String;Z)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->z()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lapp/mgsim/arena/ArenaRequestFactory;->login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p1

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p1, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p1, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 7
    iget-object p2, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {p2, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public K()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/wufan/friend/chat/c;->L(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public L(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/wufan/friend/chat/rpc/b;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public M()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/wufan/friend/chat/c;->d:Z

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/wufan/friend/chat/c;->e:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/wufan/friend/chat/c;->f:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 4
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/wufan/friend/chat/rpc/b;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/rpc/b;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method N()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    iget-object v1, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public O()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/FriendInviteBean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Lcom/join/mgps/dto/FriendBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/FriendBean;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendInviteBean;->getRoomPasswd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setRoomPwd(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendInviteBean;->getLobbyRoomId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendInviteBean;->isEliteField()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setElite(Z)V

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendInviteBean;->getSource()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendBean;->setSource(I)V

    .line 8
    invoke-virtual {p0, v1}, Lcom/wufan/friend/chat/c;->p(Lcom/join/mgps/dto/FriendBean;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_2
    return-void
.end method

.method public P()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/FriendInviteBean;

    .line 3
    new-instance v1, Lcom/join/mgps/event/m;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/join/mgps/event/m;-><init>(I)V

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendInviteBean;->getFromAccountId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/event/m;->m(I)V

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->N()V

    return-void
.end method

.method public Q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/FriendInviteBean;

    .line 3
    new-instance v1, Lcom/join/mgps/event/m;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/join/mgps/event/m;-><init>(I)V

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendInviteBean;->getFromAccountId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/event/m;->m(I)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->N()V

    return-void
.end method

.method public R(Lcom/join/mgps/dto/FriendInviteBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    if-eqz v0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-lt v0, v1, :cond_5

    .line 3
    iget-object p1, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/join/mgps/dto/FriendInviteBean;

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/j;->G(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    invoke-static {}, Lcom/join/android/app/common/utils/j;->w()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    instance-of p1, p1, Lcom/join/mgps/activity/FriendInviteActivity;

    if-nez p1, :cond_4

    .line 7
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/join/mgps/dto/FriendInviteBean;

    .line 11
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/j;->G(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 12
    invoke-static {}, Lcom/join/android/app/common/utils/j;->w()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 13
    instance-of p1, p1, Lcom/join/mgps/activity/FriendInviteActivity;

    if-nez p1, :cond_9

    .line 14
    :cond_7
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    goto :goto_1

    .line 15
    :cond_8
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public S(Lcom/join/mgps/dto/FriendAccountInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/c;->f:Lcom/join/mgps/dto/FriendAccountInfo;

    return-void
.end method

.method public T(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/friend/chat/c;->d:Z

    return-void
.end method

.method public U(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    sget-object p1, Lcom/wufan/friend/chat/protocol/OnlineState;->ONLINE:Lcom/wufan/friend/chat/protocol/OnlineState;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 3
    sget-object p1, Lcom/wufan/friend/chat/protocol/OnlineState;->INVISIBLE:Lcom/wufan/friend/chat/protocol/OnlineState;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p1, Lcom/wufan/friend/chat/protocol/OnlineState;->OFFLINE:Lcom/wufan/friend/chat/protocol/OnlineState;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/rpc/b;->s(Lcom/wufan/friend/chat/protocol/OnlineState;)V

    return-void
.end method

.method public V(Lcom/join/mgps/dto/FriendBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    return-void
.end method

.method public W(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/c;->e:I

    return-void
.end method

.method Y(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v1, 0x6

    .line 5
    aget-char p1, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x31

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v0
.end method

.method public Z()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    iget-object v1, p0, Lcom/wufan/friend/chat/c;->m:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->g()V

    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->stopService()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Lcom/join/mgps/dto/FriendBean;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/FriendBean;->setTimestamp(J)V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/m;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/join/mgps/event/m;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->c:Landroid/os/Handler;

    new-instance v1, Lcom/wufan/friend/chat/a;

    invoke-direct {v1, p0, p1}, Lcom/wufan/friend/chat/a;-><init>(Lcom/wufan/friend/chat/c;Lcom/join/mgps/dto/FriendBean;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public f(Landroid/app/Activity;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/socket/fight/arena/b;

    iget-object v1, p0, Lcom/wufan/friend/chat/c;->l:Lcom/join/mgps/socket/fight/arena/b$b;

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/socket/fight/arena/b;-><init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/b$b;)V

    iput-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/wufan/friend/chat/c;->d:Z

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/rpc/b;->e()V

    .line 4
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/rpc/b;->d()V

    return-void
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/android/app/common/utils/j;->w()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/rpc/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public i(IJ)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 2
    sget-object v1, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;->JOIN:Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 3
    sget-object v1, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;->LEAVE:Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

    .line 4
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/wufan/friend/chat/rpc/b;->b(Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public j(Lapp/mgsim/arena/ArenaResponse;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->w()Lcom/join/mgps/dto/FriendBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->m:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    invoke-interface {v0, p1}, Lapp/mgsim/arena/SocketListener$NotifyObserver;->onServerResponse(Lapp/mgsim/arena/ArenaResponse;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method k(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 6
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->P(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v1

    if-nez v1, :cond_2

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u63d2\u4ef6..."

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 9
    iget-object v1, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-static {v1, p1, v2, v0, v3}, Lapp/mgsim/arena/ArenaRequestFactory;->createRoom(Ljava/lang/String;Ljava/lang/String;IIZ)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->z()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lapp/mgsim/arena/ArenaRequestFactory;->login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p1

    .line 13
    iput-boolean v3, p1, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    .line 14
    iput-boolean v2, p1, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 15
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    goto :goto_0

    .line 16
    :cond_4
    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public l(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    const-string v0, "\\$(.*?)\\$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/j;->b()Lcom/join/mgps/Util/j;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/j;->f([B)[B

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/c;->G(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public m(I)Ljava/lang/String;
    .locals 6

    const-string v0, "\u590d\u5236\u53e3\u4ee4$%s$\u6253\u5f00\u609f\u996d\u6e38\u620f\u5385\uff0c\u52a0\u6211\u597d\u53cb\u3010\u4e0b\u8f7d\u5730\u5740https://tuis.12345fun.com/?aid=7Fp12l\u3011"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/j;->b()Lcom/join/mgps/Util/j;

    move-result-object v1

    const-string v2, "%10d"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/Util/j;->g([B)[B

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    .line 2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public n(IILjava/lang/String;ZJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wufan/friend/chat/c;->Y(Ljava/lang/String;)Z

    move-result v7

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/wufan/friend/chat/rpc/b;->f(IILjava/lang/String;ZJZ)V

    return-void
.end method

.method public o(Lcom/join/mgps/dto/FriendBean;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/wufan/friend/chat/c$a;

    invoke-direct {v1, p0, p1}, Lcom/wufan/friend/chat/c$a;-><init>(Lcom/wufan/friend/chat/c;Lcom/join/mgps/dto/FriendBean;)V

    const/4 p1, 0x1

    const-string v2, ""

    const-string v3, "FIGHT_LOBBY"

    invoke-static {v0, p1, v2, v3, v1}, Lcom/join/mgps/Util/UtilsMy;->p0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    return-void
.end method

.method public p(Lcom/join/mgps/dto/FriendBean;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "join"

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/FriendBean;->setAction(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getRoomId()I

    move-result v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getRoomPwd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->isElite()Z

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/wufan/friend/chat/c;->H(ILjava/lang/String;Z)V

    return-void
.end method

.method public q(IIJII)V
    .locals 14

    move-object v8, p0

    move v9, p1

    move/from16 v10, p5

    .line 1
    iget-object v0, v8, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v11, 0x2

    if-nez v9, :cond_1

    .line 2
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;->START:Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;

    goto :goto_0

    :cond_1
    if-ne v9, v11, :cond_2

    .line 3
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;->OVER:Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;

    :cond_2
    :goto_0
    move-object v2, v0

    move/from16 v0, p2

    .line 4
    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/c;->x(I)Lcom/wufan/friend/chat/protocol/PlayType;

    move-result-object v3

    .line 5
    iget-object v12, v8, Lcom/wufan/friend/chat/c;->c:Landroid/os/Handler;

    new-instance v13, Lcom/wufan/friend/chat/b;

    move-object v0, v13

    move-object v1, p0

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/wufan/friend/chat/b;-><init>(Lcom/wufan/friend/chat/c;Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;Lcom/wufan/friend/chat/protocol/PlayType;JII)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-ne v9, v11, :cond_3

    if-eqz v10, :cond_3

    const/4 v0, 0x1

    int-to-long v1, v10

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lcom/wufan/friend/chat/c;->i(IJ)V

    :cond_3
    return-void
.end method

.method public r()Lcom/join/mgps/dto/FriendAccountInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->f:Lcom/join/mgps/dto/FriendAccountInfo;

    return-object v0
.end method

.method public s()Lcom/join/mgps/dto/FriendInviteBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/FriendInviteBean;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/rpc/b;->i()V

    return-void
.end method

.method public v(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/wufan/friend/chat/rpc/b;->j(IJ)V

    return-void
.end method

.method public w()Lcom/join/mgps/dto/FriendBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    return-object v0
.end method

.method x(I)Lcom/wufan/friend/chat/protocol/PlayType;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/wufan/friend/chat/protocol/PlayType;->STAND:Lcom/wufan/friend/chat/protocol/PlayType;

    return-object p1

    :cond_0
    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, Lcom/wufan/friend/chat/protocol/PlayType;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/PlayType;

    return-object p1

    .line 3
    :cond_2
    :goto_0
    sget-object p1, Lcom/wufan/friend/chat/protocol/PlayType;->NET_BATTLE:Lcom/wufan/friend/chat/protocol/PlayType;

    return-object p1
.end method

.method public y(JLjava/lang/String;Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    move-object v3, p3

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    move-wide v1, p1

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/wufan/friend/chat/rpc/b;->l(JLjava/lang/String;Ljava/util/List;I)V

    return-void
.end method

.method z()Ljava/lang/String;
    .locals 1

    const-string v0, "register_type_public"

    return-object v0
.end method
