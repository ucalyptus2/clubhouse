.class public final Lc1/h0/j/m$c;
.super Ld1/b;
.source "Http2Stream.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/h0/j/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic l:Lc1/h0/j/m;


# direct methods
.method public constructor <init>(Lc1/h0/j/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/h0/j/m$c;->l:Lc1/h0/j/m;

    invoke-direct {p0}, Ld1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public j(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public k()V
    .locals 10

    .line 1
    iget-object v0, p0, Lc1/h0/j/m$c;->l:Lc1/h0/j/m;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lc1/h0/j/m;->e(Lokhttp3/internal/http2/ErrorCode;)V

    .line 2
    iget-object v0, p0, Lc1/h0/j/m$c;->l:Lc1/h0/j/m;

    .line 3
    iget-object v6, v0, Lc1/h0/j/m;->n:Lc1/h0/j/d;

    .line 4
    monitor-enter v6

    .line 5
    :try_start_0
    iget-wide v0, v6, Lc1/h0/j/d;->y:J

    iget-wide v2, v6, Lc1/h0/j/d;->x:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    monitor-exit v6

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 6
    :try_start_1
    iput-wide v2, v6, Lc1/h0/j/d;->x:J

    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const v2, 0x3b9aca00

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, v6, Lc1/h0/j/d;->A:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v6

    .line 9
    iget-object v0, v6, Lc1/h0/j/d;->r:Lc1/h0/f/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v6, Lc1/h0/j/d;->m:Ljava/lang/String;

    const-string v3, " ping"

    invoke-static {v1, v2, v3}, Ld0/e/a/a/a;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v7, 0x0

    const/4 v5, 0x1

    .line 10
    new-instance v9, Lc1/h0/j/j;

    move-object v1, v9

    move-object v2, v4

    move v3, v5

    invoke-direct/range {v1 .. v6}, Lc1/h0/j/j;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLc1/h0/j/d;)V

    invoke-virtual {v0, v9, v7, v8}, Lc1/h0/f/c;->c(Lc1/h0/f/a;J)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 11
    monitor-exit v6

    throw v0
.end method

.method public final l()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ld1/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 3
    throw v0

    :cond_0
    return-void
.end method
