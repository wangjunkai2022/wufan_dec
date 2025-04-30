.class public final synthetic Lcom/join/mgps/activity/e2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/f2;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/f2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/e2;->a:Lcom/join/mgps/activity/f2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/join/mgps/activity/e2;->a:Lcom/join/mgps/activity/f2;

    invoke-static {v0}, Lcom/join/mgps/activity/f2;->N(Lcom/join/mgps/activity/f2;)V

    return-void
.end method
