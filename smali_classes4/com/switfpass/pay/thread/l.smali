.class final Lcom/switfpass/pay/thread/l;
.super Landroid/os/AsyncTask;


# instance fields
.field private final synthetic a:Lcom/switfpass/pay/thread/e;

.field private final synthetic b:Lcom/switfpass/pay/thread/b;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/thread/e;Lcom/switfpass/pay/thread/b;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/thread/l;->a:Lcom/switfpass/pay/thread/e;

    iput-object p2, p0, Lcom/switfpass/pay/thread/l;->b:Lcom/switfpass/pay/thread/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/switfpass/pay/thread/l;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private varargs b()Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/switfpass/pay/thread/l;->b:Lcom/switfpass/pay/thread/b;

    new-instance v1, Lcom/switfpass/pay/thread/m;

    invoke-direct {v1, p0}, Lcom/switfpass/pay/thread/m;-><init>(Lcom/switfpass/pay/thread/l;)V

    invoke-virtual {v0, v1}, Lcom/switfpass/pay/thread/b;->b(Lcom/switfpass/pay/thread/a;)V

    iget-object v0, p0, Lcom/switfpass/pay/thread/l;->b:Lcom/switfpass/pay/thread/b;

    invoke-virtual {v0}, Lcom/switfpass/pay/thread/b;->a()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/switfpass/pay/thread/l;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/switfpass/pay/thread/l;->a:Lcom/switfpass/pay/thread/e;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    instance-of v1, p1, Ljava/lang/Exception;

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/switfpass/pay/thread/e;->onSucceed(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/thread/l;->a:Lcom/switfpass/pay/thread/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/switfpass/pay/thread/e;->onPreExecute()V

    :cond_0
    return-void
.end method

.method protected final varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    check-cast p1, [Ljava/lang/Integer;

    iget-object v0, p0, Lcom/switfpass/pay/thread/l;->a:Lcom/switfpass/pay/thread/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/switfpass/pay/thread/e;->onProgress(I)V

    :cond_0
    return-void
.end method
