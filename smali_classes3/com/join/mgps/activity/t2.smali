.class public final synthetic Lcom/join/mgps/activity/t2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/ShareWebActivity$o;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/t2;->a:Lcom/join/mgps/activity/ShareWebActivity$o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/join/mgps/activity/t2;->a:Lcom/join/mgps/activity/ShareWebActivity$o;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity$o;->a(Lcom/join/mgps/activity/ShareWebActivity$o;)V

    return-void
.end method
