.class public final synthetic Lcom/wufan/friend/chat/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/wufan/friend/chat/c;

.field public final synthetic b:Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;

.field public final synthetic c:Lcom/wufan/friend/chat/protocol/PlayType;

.field public final synthetic d:J

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/wufan/friend/chat/c;Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;Lcom/wufan/friend/chat/protocol/PlayType;JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wufan/friend/chat/b;->a:Lcom/wufan/friend/chat/c;

    iput-object p2, p0, Lcom/wufan/friend/chat/b;->b:Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;

    iput-object p3, p0, Lcom/wufan/friend/chat/b;->c:Lcom/wufan/friend/chat/protocol/PlayType;

    iput-wide p4, p0, Lcom/wufan/friend/chat/b;->d:J

    iput p6, p0, Lcom/wufan/friend/chat/b;->e:I

    iput p7, p0, Lcom/wufan/friend/chat/b;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/wufan/friend/chat/b;->a:Lcom/wufan/friend/chat/c;

    iget-object v1, p0, Lcom/wufan/friend/chat/b;->b:Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;

    iget-object v2, p0, Lcom/wufan/friend/chat/b;->c:Lcom/wufan/friend/chat/protocol/PlayType;

    iget-wide v3, p0, Lcom/wufan/friend/chat/b;->d:J

    iget v5, p0, Lcom/wufan/friend/chat/b;->e:I

    iget v6, p0, Lcom/wufan/friend/chat/b;->f:I

    invoke-static/range {v0 .. v6}, Lcom/wufan/friend/chat/c;->a(Lcom/wufan/friend/chat/c;Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;Lcom/wufan/friend/chat/protocol/PlayType;JII)V

    return-void
.end method
