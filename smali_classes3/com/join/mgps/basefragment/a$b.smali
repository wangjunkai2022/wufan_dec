.class Lcom/join/mgps/basefragment/a$b;
.super Ljava/lang/Object;
.source "BaseLoadingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/basefragment/a;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/basefragment/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/basefragment/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/basefragment/a$b;->a:Lcom/join/mgps/basefragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/basefragment/a$b;->a:Lcom/join/mgps/basefragment/a;

    iget-object v0, v0, Lcom/join/mgps/basefragment/a;->a:Lcom/join/mgps/customview/LoadingLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/LoadingLayout;->d()V

    :cond_0
    return-void
.end method
