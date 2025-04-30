.class Lcom/join/mgps/activity/message/a$i;
.super Ljava/lang/Object;
.source "CommunityFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/message/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field final synthetic c:Lcom/join/mgps/activity/message/a;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/message/a;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/a$i;->c:Lcom/join/mgps/activity/message/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/activity/message/a$i;->a:Ljava/lang/Object;

    .line 3
    iput p3, p0, Lcom/join/mgps/activity/message/a$i;->b:I

    return-void
.end method
