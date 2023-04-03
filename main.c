#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <pthread.h>
#include <time.h>

typedef struct {
    int *array;
    int size;
} Details;

void* MergeSortThread(void *arg) {
    Details details = *(Details *) arg;
    int *array = details.array;
    int size = details.size;
    if (size < 2){
        free(arg);
        return NULL;
    }
    int mid = size / 2;
    int left[mid], right[size - mid];
    for (int i = 0; i < mid; ++i) {
        left[i] = array[i];
    }
    for (int i = 0; i < size - mid; ++i) {
        right[i] = array[i + mid];
    }

    pthread_t half[2];
    Details *l_details, *r_details;

    l_details = malloc(sizeof(Details));
    l_details->array = left;
    l_details->size = mid;
    if (pthread_create(&half[0], NULL, &MergeSortThread, l_details) != 0)
        perror("Thread creation failed.\n");
    if (pthread_join(half[0], NULL) != 0)
        perror("Thread joining failed.\n");

    r_details = malloc(sizeof(Details));
    r_details->array = right;
    r_details->size = size - mid;
    if (pthread_create(&half[1], NULL, &MergeSortThread, r_details) != 0)
        perror("Thread creation failed.\n");
    if (pthread_join(half[1], NULL) != 0)
        perror("Thread joining failed.\n");

    int l = 0, r = 0, a = 0;
    while (l < mid && r < size - mid) {
        if (left[l] <= right[r]) {
            array[a++] = left[l++];
        } else {
            array[a++] = right[r++];
        }
    }
    for (; l < mid; ++l) {
        array[a++] = left[l];
    }
    for (; r < size - mid; ++r) {
        array[a++] = right[r];
    }
    free(arg);
    return NULL;
}

int main() {
    //Declaring Attributes
    char fileName[128];
    FILE *file;
    int size = 0;
    printf("\nMERGE SORT USING THREADS\n");

    while (1) {
        //Opening File for Reading
        while (1) {
            printf("\nEnter source file (to exit type exit) :\n");
            fgets(fileName, 127, stdin);
            fileName[strlen(fileName) - 1] = '\0';
            if (strcasecmp(fileName, "exit") == 0)
                exit(0);
            file = fopen(fileName, "r");
            if (file)
                break;
            printf("File not found, please try again!\n\n");
        }

        //Reading File
        //Read Size of Array
        fscanf(file, "%d ", &size);

        //Allocate Array
        int array[size];

        //Fill Array Elements
        for (int i = 0; i < size; ++i) {
            fscanf(file, "%d ", &array[i]);
        }

        char output[135] = {"output[ "};
        strcat(output, fileName);
        strcat(output, " ].txt");
        FILE *outputFile = fopen(output, "w");
        if (!outputFile) {
            printf("Not able to Create output File\n\n");
            exit(0);
        }

        clock_t elapsedClocks;
        //Start of Merge Sort
        elapsedClocks = clock();
        pthread_t thread;
        Details *details;
        details = malloc(sizeof(Details));
        details->array = array;
        details->size = size;
        if (pthread_create(&thread, NULL, &MergeSortThread, details) != 0)
            perror("Thread creation failed.\n");
        if (pthread_join(thread, NULL) != 0)
            perror("Thread joining failed.\n");
        elapsedClocks = clock() - elapsedClocks;
        //End of Merge Sort

        //Calculating Time Elapsed
        double elapsedTime = ((double) elapsedClocks) / CLOCKS_PER_SEC;

        fprintf(outputFile,"Sorted Array: elapsed time = %lf seconds\n", elapsedTime);
        for (int i = 0; i <size; ++i) {
            fprintf(outputFile,"%d ",array[i]);
        }
        fclose(outputFile);


        //Exit Program
        while (1) {
            printf("\nResults created in file : output[ %s ].txt\n\n", fileName);
            printf("Do you want to exit? enter yes or no\n");
            fgets(fileName, 63, stdin);
            fileName[strlen(fileName) - 1] = '\0';
            if (strcasecmp(fileName, "yes") == 0)
                exit(0);
            else if (strcasecmp(fileName, "no") != 0) {
                printf("Invalid Input\n");
                continue;
            }
            break;
        }

    }
    return 0;
}
