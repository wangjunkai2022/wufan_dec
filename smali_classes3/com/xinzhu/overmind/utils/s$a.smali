.class public Lcom/xinzhu/overmind/utils/s$a;
.super Lcom/xinzhu/overmind/utils/s;
.source "Reflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/utils/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected g:Ljava/lang/Throwable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/utils/s;-><init>()V

    return-void
.end method

.method private static A(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/xinzhu/overmind/utils/s$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "ignored"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/xinzhu/overmind/utils/s$a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/utils/s$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/utils/s$a;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/xinzhu/overmind/utils/s;->a:Ljava/lang/Class;

    .line 3
    iput-object p1, v0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static B(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/s$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/xinzhu/overmind/utils/s$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/xinzhu/overmind/utils/s$a;->D(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/xinzhu/overmind/utils/s$a;

    move-result-object p0

    return-object p0
.end method

.method public static C(Ljava/lang/String;Z)Lcom/xinzhu/overmind/utils/s$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "initialize"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/xinzhu/overmind/utils/s$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/xinzhu/overmind/utils/s$a;->D(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/xinzhu/overmind/utils/s$a;

    move-result-object p0

    return-object p0
.end method

.method public static D(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/xinzhu/overmind/utils/s$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "initialize",
            "loader"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {p0, v0}, Lcom/xinzhu/overmind/utils/s$a;->A(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/xinzhu/overmind/utils/s$a;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 3
    :goto_0
    invoke-static {v0, p1}, Lcom/xinzhu/overmind/utils/s$a;->A(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/xinzhu/overmind/utils/s$a;

    move-result-object p0

    return-object p0
.end method

.method public static J(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "caller"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/utils/s$a;->z(Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/s$a;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/overmind/utils/s$a;->z(Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/s$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xinzhu/overmind/utils/s$a;->u(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s$a;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/s$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/xinzhu/overmind/utils/s$a;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Type was null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/xinzhu/overmind/utils/s$a;->A(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/xinzhu/overmind/utils/s$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public E(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/s$a;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    .line 3
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/utils/s;->q(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    :goto_0
    return-object p0
.end method

.method public F(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "caller",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/s$a;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    .line 3
    invoke-super {p0, p1, p2}, Lcom/xinzhu/overmind/utils/s;->r(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    :goto_0
    return-object p0
.end method

.method protected G()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/s$a;->H()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected H()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/s;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public I()Lcom/xinzhu/overmind/utils/s$a;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/utils/s;->s()Lcom/xinzhu/overmind/utils/s;

    return-object p0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/utils/s$a;->u(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s$a;

    move-result-object p1

    return-object p1
.end method

.method public varargs b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "caller",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/s$a;->G()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    iput-object v1, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    .line 3
    invoke-super {p0, p1, p2}, Lcom/xinzhu/overmind/utils/s;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    return-object v1
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/s$a;->G()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    iput-object v1, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    .line 3
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/utils/s;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    return-object v1
.end method

.method public bridge synthetic e([Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/s;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/utils/s$a;->v([Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/s$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/s;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/utils/s$a;->w(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/s$a;

    move-result-object p1

    return-object p1
.end method

.method public i()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/s$a;->G()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    iput-object v1, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    .line 3
    invoke-super {p0}, Lcom/xinzhu/overmind/utils/s;->i()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 4
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    return-object v1
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "caller"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/s$a;->G()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    iput-object v1, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    .line 3
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/utils/s;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    return-object v1
.end method

.method public bridge synthetic k(Ljava/lang/String;[Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/s;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "name",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/utils/s$a;->y(Ljava/lang/String;[Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/s$a;

    move-result-object p1

    return-object p1
.end method

.method public varargs l([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initargs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/s$a;->G()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    iput-object v1, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    .line 3
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/utils/s;->l([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    return-object v1
.end method

.method public bridge synthetic q(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/utils/s$a;->E(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic r(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "caller",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/utils/s$a;->F(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic s()Lcom/xinzhu/overmind/utils/s;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/s$a;->I()Lcom/xinzhu/overmind/utils/s$a;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/s$a;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    .line 3
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/utils/s;->a(Ljava/lang/Object;)Lcom/xinzhu/overmind/utils/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    :goto_0
    return-object p0
.end method

.method public varargs v([Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/s$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/xinzhu/overmind/utils/s$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/s$a;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    .line 3
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/utils/s;->e([Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    :goto_0
    return-object p0
.end method

.method public w(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/s$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/s$a;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    .line 3
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/utils/s;->f(Ljava/lang/String;)Lcom/xinzhu/overmind/utils/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    :goto_0
    return-object p0
.end method

.method public x()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    return-object v0
.end method

.method public varargs y(Ljava/lang/String;[Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/s$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/xinzhu/overmind/utils/s$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/s$a;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    .line 3
    invoke-super {p0, p1, p2}, Lcom/xinzhu/overmind/utils/s;->k(Ljava/lang/String;[Ljava/lang/Class;)Lcom/xinzhu/overmind/utils/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/s$a;->g:Ljava/lang/Throwable;

    :goto_0
    return-object p0
.end method
