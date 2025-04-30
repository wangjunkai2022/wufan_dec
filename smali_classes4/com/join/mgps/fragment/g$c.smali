.class Lcom/join/mgps/fragment/g$c;
.super Ljava/lang/Object;
.source "ChoiceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/g;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/g;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/g$c;->a:Lcom/join/mgps/fragment/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g$c;->a:Lcom/join/mgps/fragment/g;

    iget-object v0, v0, Lcom/join/mgps/fragment/g;->m:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->z1()V

    return-void
.end method
