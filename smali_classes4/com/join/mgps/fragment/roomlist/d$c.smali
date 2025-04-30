.class Lcom/join/mgps/fragment/roomlist/d$c;
.super Ljava/lang/Object;
.source "StandardEliteRoomFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/roomlist/d;->W0(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/join/mgps/fragment/roomlist/d;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/roomlist/d;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/d$c;->b:Lcom/join/mgps/fragment/roomlist/d;

    iput-object p2, p0, Lcom/join/mgps/fragment/roomlist/d$c;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/d$c;->b:Lcom/join/mgps/fragment/roomlist/d;

    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/d$c;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/roomlist/d;->d1(Lcom/join/mgps/fragment/roomlist/d;Ljava/util/ArrayList;)V

    return-void
.end method
