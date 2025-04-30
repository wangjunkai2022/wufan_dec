.class public final synthetic Lcom/join/mgps/activity/h1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/MGMainActivity;

.field public final synthetic b:Lcom/join/mgps/db/tables/VideoWatchLogTable;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/mgps/db/tables/VideoWatchLogTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/h1;->a:Lcom/join/mgps/activity/MGMainActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/h1;->b:Lcom/join/mgps/db/tables/VideoWatchLogTable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/activity/h1;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/h1;->b:Lcom/join/mgps/db/tables/VideoWatchLogTable;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->L0(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/mgps/db/tables/VideoWatchLogTable;)V

    return-void
.end method
