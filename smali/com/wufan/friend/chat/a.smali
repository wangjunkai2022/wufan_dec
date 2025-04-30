.class public final synthetic Lcom/wufan/friend/chat/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/wufan/friend/chat/c;

.field public final synthetic b:Lcom/join/mgps/dto/FriendBean;


# direct methods
.method public synthetic constructor <init>(Lcom/wufan/friend/chat/c;Lcom/join/mgps/dto/FriendBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wufan/friend/chat/a;->a:Lcom/wufan/friend/chat/c;

    iput-object p2, p0, Lcom/wufan/friend/chat/a;->b:Lcom/join/mgps/dto/FriendBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/wufan/friend/chat/a;->a:Lcom/wufan/friend/chat/c;

    iget-object v1, p0, Lcom/wufan/friend/chat/a;->b:Lcom/join/mgps/dto/FriendBean;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/c;->b(Lcom/wufan/friend/chat/c;Lcom/join/mgps/dto/FriendBean;)V

    return-void
.end method
