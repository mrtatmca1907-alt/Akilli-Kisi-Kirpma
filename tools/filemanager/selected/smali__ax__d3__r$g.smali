.class Lax/d3/r$g;
.super Lax/z3/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lax/d3/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lax/z3/q<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/alphainventor/filemanager/file/n;",
        ">;>;"
    }
.end annotation


# instance fields
.field h:Lcom/alphainventor/filemanager/file/o;

.field i:Ljava/lang/Exception;

.field j:Landroid/content/Context;

.field final synthetic k:Lax/d3/r;


# direct methods
.method constructor <init>(Lax/d3/r;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lax/d3/r$g;->k:Lax/d3/r;

    .line 2
    .line 3
    sget-object v0, Lax/z3/q$e;->Z:Lax/z3/q$e;

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lax/z3/q;-><init>(Lax/z3/q$e;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lax/d3/r;->y3(Lax/d3/r;)Lax/f3/K;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lax/W2/h;->a0(Lax/f3/K;)Lax/f3/K;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lax/f3/x;->e(Lax/f3/K;)Lcom/alphainventor/filemanager/file/o;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lax/d3/r$g;->h:Lcom/alphainventor/filemanager/file/o;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lax/d3/r$g;->j:Landroid/content/Context;

    .line 27
    .line 28
    return-void
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
.end method


# virtual methods
.method protected bridge synthetic g([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lax/d3/r$g;->w([Ljava/lang/Void;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected bridge synthetic q(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lax/d3/r$g;->x(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected varargs w([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/alphainventor/filemanager/file/n;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lax/d3/r$g;->h:Lcom/alphainventor/filemanager/file/o;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/o;->D()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/alphainventor/filemanager/file/o;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lax/d3/r$g;->h:Lcom/alphainventor/filemanager/file/o;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/alphainventor/filemanager/file/o;->N(Lcom/alphainventor/filemanager/file/n;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catch Lax/e3/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    iput-object p1, p0, Lax/d3/r$g;->i:Ljava/lang/Exception;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method protected x(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alphainventor/filemanager/file/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lax/d3/r$g;->k:Lax/d3/r;

    .line 2
    .line 3
    invoke-static {v0}, Lax/d3/r;->s3(Lax/d3/r;)Lax/Z2/o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lax/Z2/h;->f()Lax/Z2/h$a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v0, 0x1

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lax/d3/r$g;->h:Lcom/alphainventor/filemanager/file/o;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/alphainventor/filemanager/file/o;->t()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2, p1}, Lcom/alphainventor/filemanager/file/x;->z0(Landroid/content/Context;Ljava/util/List;)Lcom/alphainventor/filemanager/file/j;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-object p1, v2, Lcom/alphainventor/filemanager/file/j;->a:Lax/f3/K;

    .line 27
    .line 28
    sget-object v0, Lax/f3/K;->f:Lax/f3/K;

    .line 29
    .line 30
    if-eq p1, v0, :cond_0

    .line 31
    .line 32
    invoke-static {}, Lax/a3/Q;->L()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lax/sb/b;->g()Lax/sb/b;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v0, "RECYCLEBIN EMPTY PERMISION NOT SDCARD"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lax/sb/b;->b(Ljava/lang/String;)Lax/sb/b;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v3, "location:"

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v3, v2, Lcom/alphainventor/filemanager/file/j;->a:Lax/f3/K;

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lax/sb/b;->i()V

    .line 76
    .line 77
    .line 78
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-object p1, v2, Lcom/alphainventor/filemanager/file/j;->a:Lax/f3/K;

    .line 84
    .line 85
    invoke-virtual {p1}, Lax/f3/K;->k()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    iget-object p1, v2, Lcom/alphainventor/filemanager/file/j;->b:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    sget-object v2, Lax/Z2/h$b;->Y:Lax/Z2/h$b;

    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    const/4 v6, 0x0

    .line 101
    const-string v3, "NEED_STORAGE_PERMISSION"

    .line 102
    .line 103
    invoke-interface/range {v1 .. v6}, Lax/Z2/h$a;->a(Lax/Z2/h$b;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lax/d3/r$g;->k:Lax/d3/r;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroidx/fragment/app/e;->Y2()V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_1
    iget-object v2, p0, Lax/d3/r$g;->k:Lax/d3/r;

    .line 113
    .line 114
    iget-object v3, p0, Lax/d3/r$g;->h:Lcom/alphainventor/filemanager/file/o;

    .line 115
    .line 116
    invoke-static {v2, v3}, Lax/d3/r;->z3(Lax/d3/r;Lcom/alphainventor/filemanager/file/o;)Lcom/alphainventor/filemanager/file/o;

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, Lax/d3/r$g;->k:Lax/d3/r;

    .line 120
    .line 121
    invoke-static {v2, p1}, Lax/d3/r;->A3(Lax/d3/r;Ljava/util/List;)Ljava/util/List;

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lax/d3/r$g;->k:Lax/d3/r;

    .line 125
    .line 126
    invoke-static {v2}, Lax/d3/r;->s3(Lax/d3/r;)Lax/Z2/o;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    iget-object v3, p0, Lax/d3/r$g;->h:Lcom/alphainventor/filemanager/file/o;

    .line 131
    .line 132
    invoke-virtual {v2, v3, p1, v0, v1}, Lax/Z2/o;->o(Lcom/alphainventor/filemanager/file/o;Ljava/util/List;ZLax/Z2/h$a;)V

    .line 133
    .line 134
    .line 135
    new-instance p1, Lax/d3/r$h;

    .line 136
    .line 137
    iget-object v0, p0, Lax/d3/r$g;->k:Lax/d3/r;

    .line 138
    .line 139
    invoke-direct {p1, v0}, Lax/d3/r$h;-><init>(Lax/d3/r;)V

    .line 140
    .line 141
    .line 142
    const/4 v0, 0x0

    .line 143
    new-array v0, v0, [Ljava/lang/Void;

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Lax/z3/q;->i([Ljava/lang/Object;)Lax/z3/q;

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_2
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    const-string v2, "EMPTY_RECYCLE BIN"

    .line 154
    .line 155
    invoke-virtual {p1, v2}, Lax/sb/b;->d(Ljava/lang/String;)Lax/sb/b;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iget-object v2, p0, Lax/d3/r$g;->i:Ljava/lang/Exception;

    .line 160
    .line 161
    invoke-virtual {p1, v2}, Lax/sb/b;->m(Ljava/lang/Throwable;)Lax/sb/b;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Lax/sb/b;->i()V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lax/d3/r$g;->j:Landroid/content/Context;

    .line 169
    .line 170
    const v2, 0x7f1302cf

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    iget-object p1, p0, Lax/d3/r$g;->j:Landroid/content/Context;

    .line 178
    .line 179
    const v2, 0x7f130137

    .line 180
    .line 181
    .line 182
    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 187
    .line 188
    .line 189
    sget-object v2, Lax/Z2/h$b;->Y:Lax/Z2/h$b;

    .line 190
    .line 191
    const/4 v5, 0x0

    .line 192
    const/4 v6, 0x0

    .line 193
    const/4 v4, 0x0

    .line 194
    invoke-interface/range {v1 .. v6}, Lax/Z2/h$a;->a(Lax/Z2/h$b;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lax/d3/r$g;->k:Lax/d3/r;

    .line 198
    .line 199
    invoke-virtual {p1}, Landroidx/fragment/app/e;->Y2()V

    .line 200
    .line 201
    .line 202
    return-void
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
.end method
