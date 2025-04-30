.class Lcom/BaseAppCompatActivity$p;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseAppCompatActivity;->hideLoadingLayoutBase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/BaseAppCompatActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseAppCompatActivity$p;->a:Lcom/BaseAppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity$p;->a:Lcom/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/BaseAppCompatActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/LoadingLayout;->d()V

    :cond_0
    return-void
.end method
