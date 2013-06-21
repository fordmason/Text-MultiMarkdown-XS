#ifndef MAN_PARSER_H
#define MAN_PARSER_H

#include "parser.h"
#include "writer.h"


void print_man_node_tree(GString *out, node *list, scratch_pad *scratch);
void print_man_node(GString *out, node *n, scratch_pad *scratch);
void print_man_localized_typography(GString *out, int character, scratch_pad *scratch);
void print_man_string(GString *out, char *str, scratch_pad *scratch);
void print_man_endnotes(GString *out, scratch_pad *scratch);

#endif
