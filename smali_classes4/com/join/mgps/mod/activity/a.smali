.class public final synthetic Lcom/join/mgps/mod/activity/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/join/mgps/mod/activity/ModLoadingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/mod/activity/a;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/join/mgps/mod/activity/a;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->F0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    return-void
.end method
