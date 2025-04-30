.class Lcom/BaseActivity$b;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/join/mgps/wrapper/SystemUiHider/a$b;


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
    iput-object p1, p0, Lcom/BaseActivity$b;->a:Lcom/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/BaseActivity$b;->a:Lcom/BaseActivity;

    invoke-virtual {p1}, Lcom/BaseActivity;->hideUiDelayed()V

    :cond_0
    return-void
.end method
