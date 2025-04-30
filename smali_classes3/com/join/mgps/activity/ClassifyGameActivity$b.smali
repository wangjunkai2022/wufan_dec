.class Lcom/join/mgps/activity/ClassifyGameActivity$b;
.super Ljava/lang/Object;
.source "ClassifyGameActivity.java"

# interfaces
.implements Lw0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ClassifyGameActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ClassifyGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$b;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselect(I)V
    .locals 0

    return-void
.end method

.method public onTabSelect(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$b;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    const-string v0, "time"

    invoke-static {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity;->D0(Lcom/join/mgps/activity/ClassifyGameActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$b;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    const-string v0, "score"

    invoke-static {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity;->D0(Lcom/join/mgps/activity/ClassifyGameActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$b;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    const-string v0, "default"

    invoke-static {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity;->D0(Lcom/join/mgps/activity/ClassifyGameActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$b;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity;->O0(Lcom/join/mgps/dto/ClassifyGameTagBean;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$b;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ClassifyGameActivity;->S0()V

    return-void
.end method
