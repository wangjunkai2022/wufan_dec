.class final Lexternal/org/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;
.super Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->c1(Z)V

    .line 3
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->e1(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->d1(Z)V

    const-string v0, ""

    .line 5
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->R0(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->Q0(Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->y:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method
