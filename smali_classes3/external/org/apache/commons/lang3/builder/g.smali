.class public Lexternal/org/apache/commons/lang3/builder/g;
.super Ljava/lang/Object;
.source "ToStringBuilder.java"

# interfaces
.implements Lexternal/org/apache/commons/lang3/builder/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexternal/org/apache/commons/lang3/builder/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;


# instance fields
.field private final a:Ljava/lang/StringBuffer;

.field private final b:Ljava/lang/Object;

.field private final c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->u:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/g;->d:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lexternal/org/apache/commons/lang3/builder/g;-><init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "style"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/g;-><init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "style",
            "buffer"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 4
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/g;->Y()Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    move-result-object p2

    :cond_0
    if-nez p3, :cond_1

    .line 5
    new-instance p3, Ljava/lang/StringBuffer;

    const/16 v0, 0x200

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 6
    :cond_1
    iput-object p3, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    .line 7
    iput-object p2, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    .line 8
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/g;->b:Ljava/lang/Object;

    .line 9
    invoke-virtual {p2, p3, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->X(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public static Y()Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .locals 1

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/builder/g;->d:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method

.method public static c0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/builder/f;->v0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d0(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "style"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/builder/f;->w0(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e0(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "style",
            "outputTransients"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0, v1}, Lexternal/org/apache/commons/lang3/builder/f;->z0(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f0(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "style",
            "outputTransients",
            "reflectUpToClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lexternal/org/apache/commons/lang3/builder/ToStringStyle;",
            "Z",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0, p3}, Lexternal/org/apache/commons/lang3/builder/f;->z0(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g0(Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    sput-object p0, Lexternal/org/apache/commons/lang3/builder/g;->d:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The style must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public A(Ljava/lang/String;[IZ)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "array",
            "fullDetail"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->n(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public B(Ljava/lang/String;[J)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->o(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public C(Ljava/lang/String;[JZ)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "array",
            "fullDetail"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->o(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public D(Ljava/lang/String;[Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->p(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public E(Ljava/lang/String;[Ljava/lang/Object;Z)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "array",
            "fullDetail"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->p(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public F(Ljava/lang/String;[S)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->q(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public G(Ljava/lang/String;[SZ)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "array",
            "fullDetail"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->q(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public H(Ljava/lang/String;[Z)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->r(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public I(Ljava/lang/String;[ZZ)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "array",
            "fullDetail"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->r(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public J(S)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->h(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    return-object p0
.end method

.method public K(Z)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->i(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public L([B)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->j(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public M([C)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->k(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public N([D)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->l(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public O([F)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->m(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public P([I)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->n(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public Q([J)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->o(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public R([Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->p(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public S([S)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->q(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public T([Z)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->r(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public U(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/g;->a0()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lexternal/org/apache/commons/lang3/ObjectUtils;->k(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-object p0
.end method

.method public V(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superToString"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->j0(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public W(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toString"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->k0(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public X()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/g;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Z()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(B)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->a(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    return-object p0
.end method

.method public a0()Ljava/lang/StringBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public b(C)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->b(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    return-object p0
.end method

.method public b0()Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/g;->X()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(D)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->c(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    return-object p0
.end method

.method public d(F)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->d(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    return-object p0
.end method

.method public e(I)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->e(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-object p0
.end method

.method public f(J)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->f(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    return-object p0
.end method

.method public g(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->g(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public h(Ljava/lang/String;B)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->a(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    return-object p0
.end method

.method public i(Ljava/lang/String;C)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->b(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    return-object p0
.end method

.method public j(Ljava/lang/String;D)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->c(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    return-object p0
.end method

.method public k(Ljava/lang/String;F)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->d(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    return-object p0
.end method

.method public l(Ljava/lang/String;I)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->e(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-object p0
.end method

.method public m(Ljava/lang/String;J)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->f(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    return-object p0
.end method

.method public n(Ljava/lang/String;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "obj"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->g(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public o(Ljava/lang/String;Ljava/lang/Object;Z)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "obj",
            "fullDetail"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->g(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public p(Ljava/lang/String;S)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->h(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    return-object p0
.end method

.method public q(Ljava/lang/String;Z)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->i(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public r(Ljava/lang/String;[B)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->j(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public s(Ljava/lang/String;[BZ)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "array",
            "fullDetail"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->j(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public t(Ljava/lang/String;[C)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->k(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/g;->Z()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/g;->a0()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/g;->b0()Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    move-result-object v1

    invoke-virtual {v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->s0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/g;->a0()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/g;->Z()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->Q(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/g;->a0()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;[CZ)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "array",
            "fullDetail"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->k(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public v(Ljava/lang/String;[D)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->l(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public w(Ljava/lang/String;[DZ)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "array",
            "fullDetail"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->l(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public x(Ljava/lang/String;[F)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->m(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public y(Ljava/lang/String;[FZ)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "array",
            "fullDetail"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->m(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public z(Ljava/lang/String;[I)Lexternal/org/apache/commons/lang3/builder/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/g;->c:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/g;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->n(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method
