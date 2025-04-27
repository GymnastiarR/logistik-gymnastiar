<?php

namespace App\Enums;

enum TransactionCategory: string
{
    case INBOUND = 'inbound';
    case OUTBOUND = 'outbound';
}
