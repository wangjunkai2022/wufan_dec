.class Lcom/join/mgps/activity/GameMainNewActivity$a;
.super Lcom/join/mgps/socket/fight/arena/a$b0;
.source "GameMainNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainNewActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameMainNewActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainNewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$a;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/a$b0;-><init>()V

    return-void
.end method


# virtual methods
.method public w0(IILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/socket/fight/arena/a$b0;->w0(IILjava/lang/Object;)V

    return-void
.end method
