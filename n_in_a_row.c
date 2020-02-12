///////////////////////////////////////////////////////////////////////////////
//
// Copyright 2020 Jim Skrentny
// Posting or sharing this file is prohibited, including any changes/additions.
//
////////////////////////////////////////////////////////////////////////////////
// Main File:        (name of file with main function)
// This File:        (name of this file)
// Other Files:      (name of all other files if any)
// Semester:         CS 354 Spring 2020
//
// Author:           Brett Kessler
// Email:            bekessler2@wisc.edu
// CS Login:         kessler
//
/////////////////////////// OTHER SOURCES OF HELP //////////////////////////////
//                   Fully acknowledge and credit all sources of help,
//                   other than Instructors and TAs.
//
// Persons:          Identify persons by name, relationship to you, and email.
//                   Describe in detail the the ideas and help they provided.
//
// Online sources:   Avoid web searches to solve your problems, but if you do
//                   search, be sure to include Web URLs and description of
//                   of any information you find.
////////////////////////////////////////////////////////////////////////////////
   
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
     
char *COMMA = ",";  
     
/* COMPLETED:       
 * Retrieves from the first line of the input file,
 * the size of the board (number of rows and columns).
 * 
 * fp: file pointer for input file
 * size: pointer to size
 */
void get_dimensions(FILE *fp, int *size) {      
    char *line = NULL;
    size_t len = 0;
    if (getline(&line, &len, fp) == -1) {
        printf("Error in reading the file.\n");
        exit(1);
    }

    char *token = NULL;
    token = strtok(line, COMMA);
    *size = atoi(token);
}       
 
   
  
/* TODO:
 * Returns 1 if and only if the board is in a valid state.
 * Otherwise returns 0.
 * 
 * board: heap allocated 2D board
 * size: number of rows and columns
 */
int n_in_a_row(int **board, int size) {
	// checks to see if the board is an odd or even size
	if(size % 2 == 0){ // Board is even and invalid
		return 0;
	}

	// checks to see if the board has the valid number of Xs compared to Os
	int xCount = 0; // tracking number of Xs
	int oCount = 0; // tracking number of Os
	int current = 0; // current array point the code is looking at

	for(int i = 0; i < size; i++){
		for(int j = 0; j < size; j++){
			current = *(*(board + i) +j);
			if(current == 1){
				xCount++;
			}
			else if(current == 2){
				oCount++;
			}
		}
	}
	int diff = xCount - oCount; // we assume x always goes first
	if(diff != 0 && diff != 1){
		return 0;
	}
	int count = 0; // adds for 1s, subtracts for 2s
	int xWins = 0; // checks how many wins there are for x on the board
	int xVertWins = 0; // checks vertical wins for x
	int xHorizWins = 0; // checks horizontal wins for x
	int oWins = 0; // checks how many wins there are for o on the board
	int oVertWins = 0; // checks veritcal wins for o
	int oHorizWins = 0; // checks horizontal wins for o
	// rows
	for(int i = 0; i < size; i++){
		count = 0;
		for(int j = 0; j < size; j++){
			current = *(*(board + i) + j);
			if(current == 1){
				count++;
			}
			else if(current == 2){
				count--;
			}
		}
		if(count == size){
			xWins++;
			xHorizWins++;
		}
		else if(count == (-1)*size){
			oWins++;
			oHorizWins++;
		}
	}
	// columns
	
	for(int i = 0; i < size; i++){
		count = 0;
		for(int j = 0; j<size; j++){
			current = *(*(board + j) + i);
			if(current == 1){
				count ++;
			}
			else if(current == 2){
				count--;
			}
		}
		if(count == size){
			xWins++;
			xVertWins++;
		}
		else if(count == (-1)*size){
			oWins++;
			oVertWins++;
		}
	}
	// top left to bottom right diagonal
	count = 0;
	for (int i = 0; i < size; i++){
		current = *(*(board + i) + i);
		if(current == 1){
			count++;
		}
		else if(current == 2){
			count --;
		}
	}
	if(count == size){
		xWins++;
	}
	if(count == (-1) * size){
		oWins++;
	}

	// top right to bottom left diagonal
	count = 0;
	for(int i = 0; i < size; i++){
		current = *(*(board + i) + (size - i));
		if(current == 1){
			count++;
		}
		else if(current == 2){
			count--;
		}
	}
	if(count == size){
		xWins++;
	}
	else if(count == (-1)*size){
		oWins++;
	}

	// checking to make sure the number of wins are valid
	if(xHorizWins + oHorizWins > 1){
		return 0;
	}
	else if(xVertWins + oVertWins > 1){
		return 0;
	}
	if(xWins + oWins > 1){
		return 0;
	}
 	// All failing scenario's have been checked for
	return 1;   
}    
  
 
   
/* PARTIALLY COMPLETED:
 * This program prints Valid if the input file contains
 * a game board with either 1 or no winners; and where
 * there is at most 1 more X than O.
 * 
 * argc: CLA count
 * argv: CLA value
 */
int main(int argc, char *argv[]) {              
     
    //TODO: Check if number of command-line arguments is correct.
    if(argc != 2){
	    printf("The number of command-line arguments is incorrect\n - It should be in the following format: ./n_in_a_row <filename.txt>\n");
	    exit(1);
    }

    //Open the file and check if it opened successfully.
    FILE *fp = fopen(*(argv + 1), "r");
    if (fp == NULL) {
        printf("Can't open file for reading.\n");
        exit(1);
    }

    //Declare local variables.
    int size;
    int **board; // Our board for Tic-Tac-Toe
    int isValid = 0; // 0 means not valid, 1 means valid

    //TODO: Call get_dimensions to retrieve the board size.
    get_dimensions(fp, &size);

    //TODO: Dynamically allocate a 2D array of dimensions retrieved above.
    board = malloc(sizeof(int*)*size);
    for(int i = 0; i < size; i++){
	    *(board + i) = malloc(sizeof(int)*size);
    }


    //Read the file line by line.
    //Tokenize each line wrt comma to store the values in your 2D array.
    char *line = NULL;
    size_t len = 0;
    char *token = NULL;
    for (int i = 0; i < size; i++) {

        if (getline(&line, &len, fp) == -1) {
            printf("Error while reading the file.\n");
            exit(1);
        }

        token = strtok(line, COMMA);
        for (int j = 0; j < size; j++) {
            //TODO: Complete the line of code below
            //to initialize your 2D array.
            /* ADD ARRAY ACCESS CODE HERE */ *(*(board + i) + j) = atoi(token);
            token = strtok(NULL, COMMA);
        }
    }

    //TODO: Call the function n_in_a_row and print the appropriate
    //output depending on the function's return value.
    isValid = n_in_a_row(board, size); // calling the method that was made previously
    if(isValid == 1){
	    printf("valid\n");
    }
    else{
	    printf("invalid\n");
    }
    //TODO: Free all dynamically allocated memory.
    for(int i = 0; i < size; i++){
	    free(*(board + i));
    }
    free(board);
    //Close the file.
    if (fclose(fp) != 0) {
        printf("Error while closing the file.\n");
        exit(1);
    } 
     
    return 0;       
}       
