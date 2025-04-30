.class Lcom/BaseActivity$a;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseActivity;->updateHider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/BaseActivity;


# direct methods
.method constructor <init>(Lcom/BaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseActivity$a;->a:Lcom/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/BaseActivity$a;->a:Lcom/BaseActivity;

    iget-object v0, v0, Lcom/BaseActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    invoke-virtual {v0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->b()V

    return-void
.end method
