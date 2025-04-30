.class Lcom/join/mgps/fragment/x0$c;
.super Ljava/lang/Object;
.source "FriendAddFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/x0;->O(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Boolean;

.field final synthetic b:Lcom/join/mgps/fragment/x0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/x0;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/x0$c;->b:Lcom/join/mgps/fragment/x0;

    iput-object p2, p0, Lcom/join/mgps/fragment/x0$c;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/x0$c;->b:Lcom/join/mgps/fragment/x0;

    iget-object v1, p0, Lcom/join/mgps/fragment/x0$c;->a:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/x0;->Z(Lcom/join/mgps/fragment/x0;Ljava/lang/Boolean;)V

    return-void
.end method
