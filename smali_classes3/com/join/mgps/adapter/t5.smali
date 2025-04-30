.class public final synthetic Lcom/join/mgps/adapter/t5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/adapter/v5;

.field public final synthetic b:Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/v5;Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/t5;->a:Lcom/join/mgps/adapter/v5;

    iput-object p2, p0, Lcom/join/mgps/adapter/t5;->b:Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/adapter/t5;->a:Lcom/join/mgps/adapter/v5;

    iget-object v1, p0, Lcom/join/mgps/adapter/t5;->b:Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/v5;->c(Lcom/join/mgps/adapter/v5;Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;Landroid/view/View;)V

    return-void
.end method
