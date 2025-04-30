.class Lcom/join/mgps/baseactivity/BaseLoadingActivity$d;
.super Ljava/lang/Object;
.source "BaseLoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/baseactivity/BaseLoadingActivity;->G0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/baseactivity/BaseLoadingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/baseactivity/BaseLoadingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity$d;->a:Lcom/join/mgps/baseactivity/BaseLoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity$d;->a:Lcom/join/mgps/baseactivity/BaseLoadingActivity;

    iget-object v0, v0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->a:Lcom/join/mgps/customview/LoadingLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/LoadingLayout;->g()V

    :cond_0
    return-void
.end method
