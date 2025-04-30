.class public Lcom/join/mgps/event/m;
.super Ljava/lang/Object;
.source "FriendEvent.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/join/mgps/dto/FriendInviteBean;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Lcom/papa91/battle/protocol/GameRoom;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/event/m;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/m;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/m;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/m;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/papa91/battle/protocol/GameRoom;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/m;->i:Lcom/papa91/battle/protocol/GameRoom;

    return-object v0
.end method

.method public e()Lcom/join/mgps/dto/FriendInviteBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/m;->f:Lcom/join/mgps/dto/FriendInviteBean;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/m;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/m;->e:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/m;->g:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/m;->j:I

    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/event/m;->b:Z

    return v0
.end method

.method public k(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/event/m;->b:Z

    return-void
.end method

.method public l(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/event/m;->a:I

    return-void
.end method

.method public m(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/event/m;->c:I

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/m;->d:Ljava/lang/String;

    return-void
.end method

.method public o(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/m;->i:Lcom/papa91/battle/protocol/GameRoom;

    return-void
.end method

.method public p(Lcom/join/mgps/dto/FriendInviteBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/m;->f:Lcom/join/mgps/dto/FriendInviteBean;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/m;->h:Ljava/lang/String;

    return-void
.end method

.method public r(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/event/m;->e:I

    return-void
.end method

.method public s(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/event/m;->g:I

    return-void
.end method

.method public t(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/event/m;->j:I

    return-void
.end method
