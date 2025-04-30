.class Lcom/join/mgps/activity/SearchListActivity1$f;
.super Ljava/lang/Object;
.source "SearchListActivity1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchListActivity1;->X0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SearchListActivity1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchListActivity1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$f;->a:Lcom/join/mgps/activity/SearchListActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$f;->a:Lcom/join/mgps/activity/SearchListActivity1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/SearchListActivity1;->h1(I)V

    return-void
.end method
