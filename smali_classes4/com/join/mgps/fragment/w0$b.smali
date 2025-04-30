.class Lcom/join/mgps/fragment/w0$b;
.super Ljava/lang/Object;
.source "FriendAddFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/KeyboardListenLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/w0;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/w0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/w0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/w0$b;->a:Lcom/join/mgps/fragment/w0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden()V
    .locals 0

    return-void
.end method

.method public onShown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/w0$b;->a:Lcom/join/mgps/fragment/w0;

    iget-object v1, v0, Lcom/join/mgps/fragment/w0;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/w0;->Q(Landroid/view/View;)V

    return-void
.end method
