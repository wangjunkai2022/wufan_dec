.class public final synthetic Lcom/join/mgps/service/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/join/mgps/service/CommonService;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/service/CommonService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/service/a;->a:Lcom/join/mgps/service/CommonService;

    iput-object p2, p0, Lcom/join/mgps/service/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/service/a;->a:Lcom/join/mgps/service/CommonService;

    iget-object v1, p0, Lcom/join/mgps/service/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/mgps/service/CommonService;->a(Lcom/join/mgps/service/CommonService;Ljava/lang/String;)V

    return-void
.end method
